import 'package:ai_buddy/core/ui/widget/responsive.dart';
import 'package:flutter/material.dart';

extension Context on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  TextTheme get primaryTextTheme => Theme.of(this).primaryTextTheme;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  void closeKeyboard() => FocusScope.of(this).unfocus();

  void showSnackBarMessage(
    String message, {
    bool isError = false,
  }) {
    final theme = Theme.of(this);
    final Color? foregroundColor;
    final Color? backgroundColor;
    if (isError) {
      foregroundColor = theme.colorScheme.onError;
      backgroundColor = theme.colorScheme.error;
    } else {
      foregroundColor = null;
      backgroundColor = null;
    }

    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        backgroundColor: backgroundColor,
        content: Text(
          message,
          style: TextStyle(color: foregroundColor),
        ),
      ),
    );
  }

  bool get isWide {
    final maxWidth = MediaQuery.sizeOf(this).width;
    return maxWidth > desktopWidthBreakpoint;
  }
}
