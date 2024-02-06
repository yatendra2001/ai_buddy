import 'dart:convert';

import 'package:ai_buddy/feature/gemini/src/init.dart';
import 'package:ai_buddy/feature/gemini/src/models/gemini_safety/gemini_safety.dart';
import 'package:ai_buddy/feature/gemini/src/models/generation_config/generation_config.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class NetworkService {
  NetworkService(this.dio, {required this.apiKey}) {
    if (!kReleaseMode && Gemini.enableDebugging) {
      dio.interceptors
          .add(LogInterceptor(requestBody: true, responseBody: true));
    }
  }
  final Dio dio;
  final String apiKey;

  GenerationConfig? generationConfig;
  List<SafetySetting>? safetySettings;

  Future<Response> post(
    String route, {
    required Map<String, Object>? data,
    GenerationConfig? generationConfig,
    List<SafetySetting>? safetySettings,
    bool isStreamResponse = false,
  }) async {
    if (safetySettings != null || this.safetySettings != null) {
      final listSafetySettings = safetySettings ?? this.safetySettings ?? [];
      final List<Map<String, dynamic>> items = [];
      for (final safetySetting in listSafetySettings) {
        items.add({
          'category': safetySetting.category.value,
          'threshold': safetySetting.threshold.value,
        });
      }
      data?['safetySettings'] = items;
    }

    if (generationConfig != null || this.generationConfig != null) {
      data?['generationConfig'] =
          generationConfig?.toJson() ?? this.generationConfig?.toJson() ?? {};
    }
    return dio.post(
      route,
      data: jsonEncode(data),
      queryParameters: {'key': apiKey},
      options: Options(
        responseType: isStreamResponse ? ResponseType.stream : null,
      ),
    );
  }

  Future<Response> get(String route) async {
    return dio.get(
      route,
      queryParameters: {'key': apiKey},
    );
  }
}
