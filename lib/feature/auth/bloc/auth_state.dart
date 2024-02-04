part of 'auth_cubit.dart';

@immutable
sealed class AuthState {
  const AuthState();
}

class AuthInitial extends AuthState {
  const AuthInitial();
}

class AuthLoading extends AuthState {
  const AuthLoading();
}

class AuthSuccess extends AuthState {
  const AuthSuccess({required this.user});

  final User? user;
}

class AuthFailure extends AuthState {
  const AuthFailure({required this.errorMessage});

  final String errorMessage;
}
