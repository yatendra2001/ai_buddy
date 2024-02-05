// ignore_for_file: avoid_dynamic_calls

class ChatMessage {
  ChatMessage({required this.role, required this.text});

  factory ChatMessage.fromJson(dynamic json) {
    return ChatMessage(
      role: json['role'] as String? ?? '',
      text: (json['parts'] as List<Map<String, String>>?)?.first['text'] ?? '',
    );
  }
  final String role;
  final String text;

  Map<String, dynamic> toJson() {
    return {
      'role': role,
      'parts': [
        {'text': text},
      ],
    };
  }
}
