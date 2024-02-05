import 'package:ai_buddy/core/repository/storage/base_hive_repository.dart';
import 'package:ai_buddy/feature/chat/chat_message.dart';
import 'package:hive/hive.dart';

class HiveRepository extends BaseHiveRepository {
  @override
  Future<void> saveMessage(ChatMessage message) async {
    final box = await Hive.openBox<ChatMessage>('chatMessages');
    await box.add(message);
  }

  @override
  Future<List<ChatMessage>> getMessages() async {
    final box = await Hive.openBox<ChatMessage>('chatMessages');
    return box.values.toList();
  }
}
