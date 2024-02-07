// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive/hive.dart';

part 'chat_bot.g.dart';

@HiveType(typeId: 0)
class ChatBot extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String? attachmentPath;

  @HiveField(2)
  final String title;

  @HiveField(3)
  final String typeOfBot;

  ChatBot({
    required this.id,
    required this.title,
    required this.typeOfBot,
    this.attachmentPath,
  });
}
