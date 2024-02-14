import 'package:hive/hive.dart';

part 'chat_bot.g.dart';

@HiveType(typeId: 0)
class ChatBot extends HiveObject {
  ChatBot({
    required this.messagesList,
    required this.id,
    required this.title,
    required this.typeOfBot,
    this.attachmentPath,
    this.embeddings,
  });
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String? attachmentPath;

  @HiveField(2)
  final String title;

  @HiveField(3)
  final String typeOfBot;

  @HiveField(4)
  final List<Map<String, dynamic>> messagesList;

  @HiveField(5)
  final Map<String, List<num>>? embeddings;
}
