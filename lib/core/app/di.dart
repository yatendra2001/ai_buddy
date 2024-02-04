import 'package:ai_buddy/feature/auth/repository/auth_repository.dart';
import 'package:ai_buddy/feature/user/bloc/user_cubit.dart';
import 'package:ai_buddy/feature/user/provider/user_mock_provider.dart';
import 'package:ai_buddy/feature/user/repository/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DI extends StatelessWidget {
  const DI({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return _ProviderDI(
      child: _RepositoryDI(
        child: _BlocDI(
          child: child,
        ),
      ),
    );
  }
}

class _ProviderDI extends StatelessWidget {
  const _ProviderDI({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<UserMockProvider>(
          create: (context) => UserMockProvider(),
        ),
      ],
      child: child,
    );
  }
}

class _RepositoryDI extends StatelessWidget {
  const _RepositoryDI({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<UserRepository>(
          create: (context) => UserRepository(
            userProvider: context.read<UserMockProvider>(),
          ),
        ),
        RepositoryProvider<AuthRepository>(
          create: (context) => AuthRepository(
            userProvider: context.read<UserMockProvider>(),
          ),
        ),
      ],
      child: child,
    );
  }
}

class _BlocDI extends StatelessWidget {
  const _BlocDI({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserCubit>(
          create: (context) => UserCubit(
            userRepository: context.read<UserRepository>(),
          ),
        ),
      ],
      child: child,
    );
  }
}
