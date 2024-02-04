import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ai_buddy/core/extension/context.dart';
import 'package:ai_buddy/core/navigation/route.dart';
import 'package:ai_buddy/feature/user/bloc/user_cubit.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserCubit, UserState>(
      listener: _onUserState,
      child: Scaffold(
        body: Center(
          child: Text(
            'Scalable\nFlutter\nApp',
            textAlign: TextAlign.center,
            style: context.textTheme.headlineLarge,
          ),
        ),
      ),
    );
  }

  void _onUserState(BuildContext context, UserState userState) {
    if (userState is! UserLoaded) {
      // User not loaded yet
      return;
    }

    AppRoute.home.go(context);
  }
}
