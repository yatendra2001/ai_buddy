import 'package:ai_buddy/core/logger/logger.dart';
import 'package:ai_buddy/feature/gemini/gemini.dart';
import 'package:ai_buddy/feature/hive/config/type_of_message.dart';
import 'package:ai_buddy/feature/hive/model/chat_bot/chat_bot.dart';
import 'package:ai_buddy/feature/hive/model/chat_message/chat_message.dart';
import 'package:ai_buddy/feature/hive/repository/hive_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

final messageListProvider = StateNotifierProvider<MessageListNotifier, ChatBot>(
  (ref) => MessageListNotifier(),
);

class MessageListNotifier extends StateNotifier<ChatBot> {
  MessageListNotifier()
      : super(ChatBot(messagesList: [], id: '', title: '', typeOfBot: ''));

  final gemini = Gemini.init(apiKey: 'AIzaSyAa6TGCb-8tlgXve9SUkzUOCukWM2rdczg');
  final uuid = const Uuid();

  Future<void> updateChatBotWithMessage(ChatMessage message) async {
    final newMessageList = [...state.messagesList, message.toJson()];
    updateChatBot(
      ChatBot(
        messagesList: newMessageList,
        id: state.id,
        title: state.title,
        typeOfBot: state.typeOfBot,
      ),
    );
    await HiveRepository().saveChatBot(chatBot: state);
  }

  Future<void> handleSendPressed(String text) async {
    final messageId = uuid.v4();
    final ChatMessage message = ChatMessage(
      id: messageId,
      text: text,
      createdAt: DateTime.now(),
      typeOfMessage: TypeOfMessage.user,
      chatBotId: state.id,
    );
    await updateChatBotWithMessage(message);
    await streamGeminiResponse(text);
  }

  Future<void> streamGeminiResponse(String query) async {
    final List<Parts> chatParts = state.messagesList.map((msg) {
      return Parts(text: msg['text'] as String);
    }).toList()
      ..add(Parts(text: query));

    final content = Content(parts: chatParts);
    final responseStream = gemini.streamChat(
      [content],
      safetySettings: [
        SafetySetting(
          category: SafetyCategory.hateSpeech,
          threshold: SafetyThreshold.blockMediumAndAbove,
        ),
      ],
    );

    final String modelMessageId = uuid.v4();
    final placeholderMessage = ChatMessage(
      id: modelMessageId,
      text: 'waiting for response...',
      createdAt: DateTime.now(),
      typeOfMessage: TypeOfMessage.bot,
      chatBotId: state.id,
    );

    await updateChatBotWithMessage(placeholderMessage);

    final StringBuffer fullResponseText = StringBuffer();

    responseStream.listen((response) async {
      if (response.content!.parts!.isNotEmpty) {
        fullResponseText.write(response.content!.parts!.first.text);
        final int messageIndex =
            state.messagesList.indexWhere((msg) => msg['id'] == modelMessageId);
        if (messageIndex != -1) {
          final newMessagesList =
              List<Map<String, dynamic>>.from(state.messagesList);
          newMessagesList[messageIndex]['text'] = fullResponseText.toString();
          final newState = ChatBot(
            id: state.id,
            title: state.title,
            typeOfBot: state.typeOfBot,
            messagesList: newMessagesList,
            attachmentPath: state.attachmentPath,
          );
          state = newState;
          updateChatBot(state);
          await HiveRepository().saveChatBot(chatBot: state);
        }
      }
      // ignore: inference_failure_on_untyped_parameter
    }).onError((error) {
      logError('Error in response stream $error');
    });
  }

  // ignore: use_setters_to_change_properties
  void updateChatBot(ChatBot newChatBot) {
    state = newChatBot;
  }
}
