import 'dart:async';

import 'package:ai_buddy/feature/user/model/user.dart';

User get _mockUser => User(
      id: 'john-doe',
      name: 'John Doe',
      email: 'john@test.com',
      imageUrl:
          'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=200&q=80',
      createdAt: DateTime.now(),
    );

class UserMockProvider {
  UserMockProvider() {
    triggerNotLoggedIn();
  }

  final _userStream = StreamController<User?>.broadcast();

  Stream<User?> getUserStream() => _userStream.stream;

  Future<User?> triggerLoggedIn() async {
    await _networkDelay();

    final user = _mockUser;
    _userStream.add(user);
    return user;
  }

  Future<void> triggerNotLoggedIn() async {
    await _networkDelay();
    _userStream.add(null);
  }

  void triggerLoggedOut() {
    _userStream.add(null);
  }

  /// Simulate network delay
  Future<void> _networkDelay() async {
    await Future<void>.delayed(const Duration(seconds: 2));
  }
}
