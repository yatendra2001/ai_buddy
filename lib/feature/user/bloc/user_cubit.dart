import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ai_buddy/core/logger/loggy_types.dart';
import 'package:ai_buddy/feature/user/model/user.dart';
import 'package:ai_buddy/feature/user/repository/user_repository.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> with BlocLoggy {
  UserCubit({
    required this.userRepository,
  }) : super(const UserInitial()) {
    _load();
  }

  final UserRepository userRepository;

  StreamSubscription<User?>? _userSubscription;

  @override
  Future<void> close() {
    _userSubscription?.cancel();
    return super.close();
  }

  void logOut() {
    userRepository.logOut();
  }

  void _load() {
    _userSubscription = userRepository.getUserStream().listen(_onUser);
  }

  void _onUser(User? user) {
    loggy.info('new user: ${user?.id}');
    emit(UserLoaded(user: user));
  }
}
