import 'package:ai_buddy/feature/chat/chat_message.dart';

abstract class BaseHiveRepository {
  Future<void> saveMessage(ChatMessage message);
  Future<List<ChatMessage>> getMessages();
}
