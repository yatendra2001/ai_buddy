import 'package:flutter/material.dart';
import 'package:ai_buddy/core/extension/context.dart';
import 'package:ai_buddy/core/extension/context_user.dart';
import 'package:ai_buddy/core/navigation/route.dart';
import 'package:ai_buddy/feature/user/ui/widget/user_image.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.watchCurrentUser;
    if (user == null) {
      return Center(
        child: ElevatedButton(
          onPressed: () => AppRoute.auth.push(context),
          child: const Text('Sign In'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => AppRoute.settings.push(context),
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            UserImage.medium(user.imageUrl),
            const SizedBox(height: 16),
            Text(
              user.name,
              textAlign: TextAlign.center,
              style: context.textTheme.titleMedium,
            ),
            const SizedBox(height: 4),
            Text(
              user.email,
              textAlign: TextAlign.center,
              style: context.textTheme.bodyLarge,
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
