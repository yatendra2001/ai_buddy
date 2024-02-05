part of 'chat_cubit.dart';

sealed class ChatState {}

final class ChatInitial extends ChatState {}

final class ChatSuccess extends ChatState {
  ChatSuccess({required this.messages});
  final List<ChatMessage> messages;
}
