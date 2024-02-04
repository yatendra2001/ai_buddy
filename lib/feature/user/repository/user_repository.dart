import 'package:ai_buddy/feature/user/model/user.dart';
import 'package:ai_buddy/feature/user/provider/user_mock_provider.dart';

class UserRepository {
  const UserRepository({
    required this.userProvider,
  });

  final UserMockProvider userProvider;

  Stream<User?> getUserStream() {
    return userProvider.getUserStream();
  }

  void logOut() {
    userProvider.triggerLoggedOut();
  }
}
