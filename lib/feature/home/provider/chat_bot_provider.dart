import 'package:ai_buddy/feature/hive/model/chat_bot/chat_bot.dart';
import 'package:ai_buddy/feature/hive/repository/hive_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final chatBotListProvider =
    StateNotifierProvider<ChatBotListNotifier, List<ChatBot>>(
  (ref) => ChatBotListNotifier(),
);

class ChatBotListNotifier extends StateNotifier<List<ChatBot>> {
  ChatBotListNotifier() : super([]);

  final hiveRepository = HiveRepository();

  Future<void> fetchChatBots() async {
    final chatBotsList = await hiveRepository.getChatBots();
    state = chatBotsList;
  }

  Future<void> saveChatBot(ChatBot chatBot) async {
    await hiveRepository.saveChatBot(chatBot: chatBot);
    state = [...state, chatBot];
  }

  Future<void> updateChatBotOnHomeScreen(ChatBot chatBot) async {
    final int chatBotIndex =
        state.indexWhere((existingChatBot) => existingChatBot.id == chatBot.id);
    if (chatBotIndex != -1) {
      state[chatBotIndex] = chatBot;
    }
  }

  Future<void> deleteChatBot(ChatBot chatBot) async {
    await hiveRepository.deleteChatBot(chatBot: chatBot);
    state = state.where((item) => item.id != chatBot.id).toList();
  }
}
