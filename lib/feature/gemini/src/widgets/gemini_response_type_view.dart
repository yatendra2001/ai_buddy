import 'package:ai_buddy/feature/gemini/src/init.dart';
import 'package:ai_buddy/feature/gemini/src/provider/gemini_response_provider.dart';
import 'package:flutter/material.dart';

class GeminiResponseTypeView extends StatelessWidget {
  GeminiResponseTypeView({
    required this.builder,
    super.key,
    this.child,
  }) {
    Gemini.instance.typeProvider ??= GeminiResponseProvider();
  }
  final Widget Function(
    BuildContext context,
    Widget? child,
    String? response,
    bool loading,
  ) builder;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ListenableBuilder(
        listenable: Gemini.instance.typeProvider!,
        child: child,
        builder: (context, child) {
          return builder(
            context,
            child,
            Gemini.instance.typeProvider!.lastTypeResponseOrNull,
            Gemini.instance.typeProvider!.loading,
          );
        },
      ),
    );
  }
}
