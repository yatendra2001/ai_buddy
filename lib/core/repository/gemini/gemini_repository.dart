import 'dart:convert';
import 'package:ai_buddy/core/repository/gemini/base_gemini_repository.dart';
import 'package:ai_buddy/feature/chat/chat_message.dart';
import 'package:http/http.dart' as http;

class GeminiRepository extends BaseGeminiRepository {
  @override
  Future<ChatMessage> sendMessage(ChatMessage message) async {
    final response = await http.post(
      Uri.parse(
          'https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=YOUR_API_KEY'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'contents': [message.toJson()],
      }),
    );

    final responseData = jsonDecode(response.body);
    return ChatMessage.fromJson(responseData);
  }
}
