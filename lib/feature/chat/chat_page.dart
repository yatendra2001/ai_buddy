import 'package:ai_buddy/core/logger/logger.dart';
import 'package:ai_buddy/feature/gemini/src/init.dart';
import 'package:ai_buddy/feature/gemini/src/models/content/content.dart';
import 'package:ai_buddy/feature/gemini/src/models/parts/parts.dart';
import 'package:ai_buddy/feature/hive/config/type_of_message.dart';
import 'package:ai_buddy/feature/home/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:uuid/uuid.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});
  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final gemini = Gemini.init(apiKey: 'AIzaSyAa6TGCb-8tlgXve9SUkzUOCukWM2rdczg');
  final uuid = const Uuid();
  List<types.Message> messages = [];

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.secondary;
    const iconData = Linecons.comment;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: -300,
              top: -00,
              child: Container(
                height: 500,
                width: 600,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      color.withOpacity(0.5),
                      Theme.of(context).colorScheme.background.withOpacity(0.5),
                    ],
                  ),
                ),
              ),
            ),
            CustomPaint(
              painter: BackgroundCurvesPainter(),
              size: Size.infinite,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(vertical: 16),
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              offset: const Offset(4, 4),
                              blurRadius: 8,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'AI Buddy',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.surface,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 42,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Expanded(
                    child: Chat(
                      messages: messages,
                      onSendPressed: _handleSendPressed,
                      user: const types.User(id: TypeOfMessage.user),
                      showUserAvatars: true,
                      avatarBuilder: (user) => Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: CircleAvatar(
                          backgroundColor: color,
                          radius: 19,
                          child: Icon(
                            iconData,
                            size: 18,
                            color: Theme.of(context).colorScheme.surface,
                          ),
                        ),
                      ),
                      theme: DefaultChatTheme(
                        backgroundColor: Colors.transparent,
                        primaryColor: Theme.of(context).colorScheme.onSurface,
                        secondaryColor: color,
                        inputBackgroundColor:
                            Theme.of(context).colorScheme.onBackground,
                        inputTextColor: Theme.of(context).colorScheme.onSurface,
                        sendingIcon: Icon(
                          Icons.send,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                        inputTextCursorColor:
                            Theme.of(context).colorScheme.onSurface,
                        receivedMessageBodyTextStyle: TextStyle(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                        ),
                        sentMessageBodyTextStyle: TextStyle(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                        ),
                        dateDividerTextStyle: TextStyle(
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                          height: 1.333,
                        ),
                        inputTextStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                        inputTextDecoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.zero,
                          isCollapsed: true,
                          fillColor: Theme.of(context).colorScheme.onBackground,
                        ),
                        inputBorderRadius: const BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _handleSendPressed(types.PartialText text) async {
    final messageId = uuid.v4();
    // Add to repository
    final textMessage = types.TextMessage(
      author: const types.User(id: TypeOfMessage.user),
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: messageId,
      text: text.text,
    );
    setState(() {
      messages.insert(0, textMessage);
    });
    await _streamGeminiResponse(text.text);
  }

  Future<void> _streamGeminiResponse(String query) async {
    final List<Parts> chatParts = messages.map((msg) {
      if (msg is types.TextMessage) {
        return Parts(text: msg.text);
      } else {
        return Parts(text: '');
      }
    }).toList()
      ..add(Parts(text: query));

    final content = Content(parts: chatParts);
    final responseStream = gemini.streamChat([content]);

    final String modelMessageId = uuid.v4();
    final placeholderMessage = types.TextMessage(
      author: const types.User(id: TypeOfMessage.bot),
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: modelMessageId,
      text: 'waiting for response...',
    );

    setState(() {
      messages.insert(0, placeholderMessage);
    });

    final StringBuffer fullResponseText = StringBuffer();

    responseStream.listen((response) {
      if (response.content!.parts!.isNotEmpty) {
        fullResponseText.write(response.content!.parts!.first.text);
        final int messageIndex =
            messages.indexWhere((msg) => msg.id == modelMessageId);
        if (messageIndex != -1) {
          final updatedMessage = types.TextMessage(
            author: messages[messageIndex].author,
            createdAt: messages[messageIndex].createdAt,
            id: messages[messageIndex].id,
            text: fullResponseText.toString(),
          );

          setState(() {
            messages[messageIndex] = updatedMessage;
          });
        }
      }
      // ignore: inference_failure_on_untyped_parameter
    }).onError((error) {
      logError('Error in response stream $error');
    });
  }
}
