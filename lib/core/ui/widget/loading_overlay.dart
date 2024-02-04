import 'package:flutter/material.dart';

class LoadingOverlay extends StatelessWidget {
  const LoadingOverlay({
    required this.loading,
    required this.child,
    super.key,
  });

  final bool loading;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (!loading) {
      return child;
    }

    return Stack(
      children: [
        child,
        const ColoredBox(
          color: Colors.black54,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ],
    );
  }
}
