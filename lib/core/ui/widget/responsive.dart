import 'package:flutter/material.dart';

const desktopWidthBreakpoint = 1280.0;
const mobileWidthBreakpoint = 600.0;

class ConstrainedWidth extends StatelessWidget {
  const ConstrainedWidth.desktop({
    required this.child,
    super.key,
  }) : maxWidth = desktopWidthBreakpoint;

  const ConstrainedWidth.mobile({
    required this.child,
    super.key,
  }) : maxWidth = mobileWidthBreakpoint;

  final double maxWidth;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: maxWidth,
        ),
        child: child,
      ),
    );
  }
}
