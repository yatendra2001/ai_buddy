part of 'user_cubit.dart';

@immutable
sealed class UserState {
  const UserState();
}

class UserInitial extends UserState {
  const UserInitial();
}

class UserLoaded extends UserState {
  const UserLoaded({
    required this.user,
  });

  final User? user;
}
