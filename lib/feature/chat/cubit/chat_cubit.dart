import 'package:ai_buddy/core/repository/gemini/gemini_repository.dart';
import 'package:ai_buddy/core/repository/storage/hive_repository.dart';
import 'package:ai_buddy/feature/chat/chat_message.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit({required this.geminiRepository, required this.hiveRepository})
      : super(ChatInitial());
  final GeminiRepository geminiRepository;
  final HiveRepository hiveRepository;

  Future<void> sendMessage(String text) async {
    final message = ChatMessage(role: 'user', text: text);
    final response = await geminiRepository.sendMessage(message);
    await hiveRepository.saveMessage(message);
    await hiveRepository.saveMessage(response);
    emit(ChatSuccess(messages: await hiveRepository.getMessages()));
  }
}
