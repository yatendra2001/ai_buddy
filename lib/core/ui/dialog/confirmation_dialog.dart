import 'dart:io';

import 'package:ai_buddy/core/extension/context.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ConfirmationDialog extends StatelessWidget {
  const ConfirmationDialog({
    required this.title,
    required this.message,
    required this.confirmText,
    required this.isDestructive,
    super.key,
  });

  final String title;
  final String message;
  final String confirmText;
  final bool isDestructive;

  @override
  Widget build(BuildContext context) {
    return !kIsWeb && Platform.isIOS
        ? _IosConfirmationDialog(
            title: title,
            message: message,
            confirmText: confirmText,
            isDestructive: isDestructive,
          )
        : _AndroidConfirmationDialog(
            title: title,
            message: message,
            confirmText: confirmText,
            isDestructive: isDestructive,
          );
  }
}

class _AndroidConfirmationDialog extends StatelessWidget {
  const _AndroidConfirmationDialog({
    required this.title,
    required this.message,
    required this.confirmText,
    required this.isDestructive,
  });

  final String title;
  final String message;
  final String confirmText;
  final bool isDestructive;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: context.colorScheme.onBackground,
          ),
          onPressed: () => context.pop(),
          child: const Text('Cancel'),
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: isDestructive
                ? context.colorScheme.error
                : context.colorScheme.onBackground,
          ),
          onPressed: () => context.pop(true),
          child: Text(confirmText),
        ),
      ],
    );
  }
}

class _IosConfirmationDialog extends StatelessWidget {
  const _IosConfirmationDialog({
    required this.title,
    required this.message,
    required this.confirmText,
    required this.isDestructive,
  });

  final String title;
  final String message;
  final String confirmText;
  final bool isDestructive;

  @override
  Widget build(BuildContext context) {
    const OutlinedBorder buttonShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.zero,
    );

    return CupertinoAlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: context.colorScheme.onBackground,
            shape: buttonShape,
          ),
          onPressed: () => context.pop(),
          child: const Text('Cancel'),
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: isDestructive
                ? context.colorScheme.error
                : context.colorScheme.onBackground,
            shape: buttonShape,
          ),
          onPressed: () => context.pop(true),
          child: Text(confirmText),
        ),
      ],
    );
  }
}
