import 'package:ai_buddy/feature/chat/chat_message.dart';

abstract class BaseGeminiRepository {
  Future<ChatMessage> sendMessage(ChatMessage message);
}
