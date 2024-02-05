import 'package:ai_buddy/feature/chat/chat_message.dart';

// ignore: one_member_abstracts
abstract class BaseGeminiRepository {
  Future<ChatMessage> sendMessage(ChatMessage message);
}
