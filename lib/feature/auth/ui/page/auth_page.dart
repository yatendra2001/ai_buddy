import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ai_buddy/core/extension/context.dart';
import 'package:ai_buddy/core/navigation/route.dart';
import 'package:ai_buddy/core/ui/input/input_field.dart';
import 'package:ai_buddy/core/ui/widget/labeled_text_button.dart';
import 'package:ai_buddy/core/ui/widget/loading_overlay.dart';
import 'package:ai_buddy/core/ui/widget/responsive.dart';
import 'package:ai_buddy/feature/auth/bloc/auth_cubit.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _isSignUp = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: _onAuthState,
      builder: (context, state) {
        return LoadingOverlay(
          loading: state is AuthLoading,
          child: Scaffold(
            appBar: AppBar(),
            body: ConstrainedWidth.mobile(
              child: Form(
                key: _formKey,
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Spacer(),
                        Text(
                          _isSignUp
                              ? 'Sign up to continue'
                              : 'Sign in to continue',
                          style: context.textTheme.titleLarge,
                        ),
                        const SizedBox(height: 16),
                        InputField.email(
                          controller: _emailController,
                        ),
                        const SizedBox(height: 16),
                        InputField.password(
                          controller: _passwordController,
                          textInputAction: TextInputAction.done,
                          onFieldSubmitted: (_) => _submit(),
                        ),
                        const SizedBox(height: 32),
                        ElevatedButton(
                          onPressed: _submit,
                          child: Text(_isSignUp ? 'Sign Up' : 'Sign In'),
                        ),
                        const SizedBox(height: 8),
                        LabeledTextButton(
                          label: _isSignUp
                              ? 'Already have an account?'
                              : 'Don’t have an account?',
                          action: _isSignUp ? 'Sign in' : 'Sign up',
                          onTap: () => setState(() => _isSignUp = !_isSignUp),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void _onAuthState(BuildContext context, AuthState state) {
    if (state is AuthFailure) {
      context.showSnackBarMessage(
        state.errorMessage,
        isError: true,
      );
      return;
    }

    if (state is AuthSuccess) {
      if (state.user != null) {
        AppRoute.home.go(context);
      }
    }
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    context.closeKeyboard();

    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    if (_isSignUp) {
      context.read<AuthCubit>().signUpWithEmailAndPassword(
            email: email,
            password: password,
          );
    } else {
      context.read<AuthCubit>().signInWithEmailAndPassword(
            email: email,
            password: password,
          );
    }
  }
}
