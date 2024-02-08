import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message.freezed.dart';
part 'chat_message.g.dart';

@freezed
class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    required String id,
    required String text,
    required DateTime createdAt,
    required String typeOfMessage,
    required String chatBotId,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);

  static List<ChatMessage> jsonToList(List<dynamic> list) =>
      list.map((e) => ChatMessage.fromJson(e as Map<String, dynamic>)).toList();
}
