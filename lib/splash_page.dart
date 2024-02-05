import 'package:ai_buddy/core/extension/context.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'AI Buddy',
          textAlign: TextAlign.center,
          style: context.textTheme.headlineLarge,
        ),
      ),
    );
  }
}
