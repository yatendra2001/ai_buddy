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
      providers: [],
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
      providers: [],
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
      providers: [],
      child: child,
    );
  }
}
