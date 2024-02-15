import 'package:ai_buddy/feature/hive/model/chat_bot/chat_bot.dart';
import 'package:ai_buddy/feature/hive/repository/base_hive_repository.dart';
import 'package:hive/hive.dart';

class HiveRepository implements BaseHiveRepository {
  HiveRepository();
  final Box<ChatBot> _chatBot = Hive.box<ChatBot>('chatbots');

  @override
  Future<void> saveChatBot({required ChatBot chatBot}) async {
    await _chatBot.put(chatBot.id, chatBot);
  }

  @override
  Future<List<ChatBot>> getChatBots() async {
    final chatBotBox = await Hive.openBox<ChatBot>('chatBots');
    final List<ChatBot> chatBotsList = chatBotBox.values.toList();
    return chatBotsList;
  }

  @override
  Future<void> deleteChatBot({required ChatBot chatBot}) async {
    await _chatBot.delete(chatBot.id);
  }
}
