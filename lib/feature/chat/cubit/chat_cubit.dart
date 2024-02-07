import 'package:ai_buddy/feature/hive/model/chat_message/chat_message.dart';
import 'package:ai_buddy/feature/hive/repository/hive_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_state.dart';
part 'chat_cubit.freezed.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit({required HiveRepository repository})
      : _repository = repository,
        super(const ChatState.initial());
  final HiveRepository _repository;

  Future<void> fetchLatestChats() async {
    final messages = await _repository.getMessages();
    emit(ChatState.loaded(messages));
  }
}
