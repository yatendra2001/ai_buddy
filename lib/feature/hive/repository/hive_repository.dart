import 'package:ai_buddy/feature/hive/model/chat_message/chat_message.dart';
import 'package:ai_buddy/feature/hive/repository/base_hive_repository.dart';
import 'package:hive/hive.dart';

class HiveRepository implements BaseHiveRepository {
  HiveRepository(this._chatBox);
  final Box<ChatMessage> _chatBox;

  @override
  Future<void> saveMessage({required ChatMessage message}) async {
    await _chatBox.put(message.id, message);
  }

  @override
  Future<List<ChatMessage>> getMessages() async {
    return _chatBox.values.toList();
  }
}
