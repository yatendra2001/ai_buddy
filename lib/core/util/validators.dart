import 'package:ai_buddy/core/extension/string.dart';
import 'package:flutter/material.dart';

abstract class Validators {
  Validators._();

  static FormFieldValidator<String>? getValidator(TextInputType? keyboardType) {
    return switch (keyboardType) {
      TextInputType.url => Validators.apiKey,
      TextInputType.number => Validators.number,
      _ => null,
    };
  }

  static String? required(String? input) {
    if (input?.trim().isEmpty ?? true) {
      return 'Required';
    }

    return null;
  }

  static String? requiredTyped<T>(T? input) {
    if (input == null) {
      return 'Required';
    }

    return null;
  }

  static String? apiKey(String? api) {
    if (api == null || api.isEmpty) {
      return 'Required';
    }

    if (!api.isValidAPIKey()) {
      return 'Enter valid api key';
    }

    return null;
  }

  static String? number(String? input) {
    if (input == null) {
      return 'Required';
    }

    final number = num.tryParse(input);
    if (number == null) {
      return 'Enter valid number';
    }

    return null;
  }
}
