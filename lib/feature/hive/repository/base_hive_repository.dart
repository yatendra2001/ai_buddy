import 'package:ai_buddy/feature/hive/model/chat_message/chat_message.dart';

abstract class BaseHiveRepository {
  Future<void> saveMessage({required ChatMessage message});
  Future<List<ChatMessage>> getMessages();
}
