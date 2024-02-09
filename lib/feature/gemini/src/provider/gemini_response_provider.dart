import 'dart:async';

import 'package:flutter/material.dart';

class GeminiResponseProvider extends ChangeNotifier {
  GeminiResponseProvider() {
    Timer.periodic(const Duration(milliseconds: 2), (timer) {
      if (response == null || lastTypeResponseOrNull == response) {
        return;
      }

      if (lastTypeResponseOrNull != response &&
          _charIndex <= (response?.length ?? -1)) {
        lastTypeResponseOrNull = response?.substring(0, _charIndex++);

        notifyListeners();
      }
    });
  }
  String? response;
  int _charIndex = 0;
  bool _loading = false;
  String? lastTypeResponseOrNull;

  set loading(bool set) {
    if (_loading != set) {
      _loading = set;
      notifyListeners();
    }
  }

  bool get loading => _loading;

  void clear() {
    response = null;
    lastTypeResponseOrNull = null;
    _charIndex = 0;
    loading = true;
  }

  void add(String? text) {
    if (text == null) {
      return;
    }
    if (response == null) {
      response = text;
    } else {
      response = '${response!}$text';
    }
  }
}
