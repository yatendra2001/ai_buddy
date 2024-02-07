import 'package:hive/hive.dart';

part 'chat_message.g.dart';

@HiveType(typeId: 1)
class ChatMessage extends HiveObject {
  ChatMessage({
    required this.id,
    required this.text,
    required this.createdAt,
    required this.senderId,
    required this.chatBotId,
  });
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String text;

  @HiveField(2)
  final DateTime createdAt;

  @HiveField(3)
  final String senderId;

  @HiveField(4)
  final String chatBotId;
}
