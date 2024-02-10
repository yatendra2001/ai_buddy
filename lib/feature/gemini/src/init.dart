import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:ai_buddy/core/config/gemini_model_constants.dart';
import 'package:ai_buddy/feature/gemini/src/models/candidates/candidates.dart';
import 'package:ai_buddy/feature/gemini/src/models/content/content.dart';
import 'package:ai_buddy/feature/gemini/src/models/gemini_model/gemini_model.dart';
import 'package:ai_buddy/feature/gemini/src/models/gemini_safety/gemini_safety.dart';
import 'package:ai_buddy/feature/gemini/src/models/generation_config/generation_config.dart';
import 'package:ai_buddy/feature/gemini/src/provider/gemini_response_provider.dart';
import 'package:ai_buddy/feature/gemini/src/repository/base_gemini_repository.dart';
import 'package:ai_buddy/feature/gemini/src/repository/gemini_repository.dart';
import 'package:ai_buddy/feature/gemini/src/repository/network_service.dart';
import 'package:dio/dio.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (cert, host, port) => true;
  }
}

class Gemini extends BaseGeminiRepository {
  Gemini._({
    required String apiKey,
    String? baseURL,
    Map<String, dynamic>? headers,
    List<SafetySetting>? safetySettings,
    GenerationConfig? generationConfig,
    String? version,
  }) : _impl = GeminiRepository(
          api: NetworkService(
            Dio(
              BaseOptions(
                baseUrl:
                    '${baseURL ?? GeminiModelConstants.baseUrl}${version ?? GeminiModelConstants.defaultVersion}/',
                contentType: 'application/json',
                headers: headers,
              ),
            ),
            apiKey: apiKey,
          ),
          safetySettings: safetySettings,
          generationConfig: generationConfig,
        ) {
    HttpOverrides.global = MyHttpOverrides();
  }

  factory Gemini.init({
    required String apiKey,
    String? baseURL,
    Map<String, dynamic>? headers,
    List<SafetySetting>? safetySettings,
    GenerationConfig? generationConfig,
    bool? enableDebugging,
    String? version,
  }) {
    if (enableDebugging != null) {
      Gemini.enableDebugging = enableDebugging;
    }
    if (_firstInit) {
      _firstInit = false;
      instance = Gemini._(
        apiKey: apiKey,
        baseURL: baseURL,
        headers: headers,
        safetySettings: safetySettings,
        generationConfig: generationConfig,
        version: version,
      );
    }
    return instance;
  }

  static bool enableDebugging = false;
  static late Gemini instance;
  static bool _firstInit = true;

  GeminiRepository _impl;

  @override
  Future<Candidates?> chat(
    List<Content> chats, {
    String? modelName,
    List<SafetySetting>? safetySettings,
    GenerationConfig? generationConfig,
  }) =>
      _impl.chat(
        chats,
        generationConfig: generationConfig,
        safetySettings: safetySettings,
        modelName: modelName,
      );

  @override
  Stream<Candidates> streamChat(
    List<Content> chats, {
    String? modelName,
    List<SafetySetting>? safetySettings,
    GenerationConfig? generationConfig,
  }) =>
      _impl.streamChat(
        chats,
        modelName: modelName,
        safetySettings: safetySettings,
        generationConfig: generationConfig,
      );

  @override
  Future<int?> countTokens(
    String text, {
    String? modelName,
    List<SafetySetting>? safetySettings,
    GenerationConfig? generationConfig,
  }) =>
      _impl.countTokens(
        text,
        generationConfig: generationConfig,
        safetySettings: safetySettings,
        modelName: modelName,
      );

  @override
  Future<GeminiModel> info({required String model}) => _impl.info(model: model);

  @override
  Future<List<GeminiModel>> listModels() => _impl.listModels();

  @override
  Stream<Candidates> streamGenerateContent(
    String text, {
    List<Uint8List>? images,
    String? modelName,
    List<SafetySetting>? safetySettings,
    GenerationConfig? generationConfig,
  }) =>
      _impl.streamGenerateContent(
        text,
        images: images,
        generationConfig: generationConfig,
        safetySettings: safetySettings,
        modelName: modelName,
      );

  @override
  Future<Candidates?> textAndImage({
    required String text,
    required List<Uint8List> images,
    String? modelName,
    List<SafetySetting>? safetySettings,
    GenerationConfig? generationConfig,
  }) =>
      _impl.textAndImage(
        text: text,
        images: images,
        generationConfig: generationConfig,
        safetySettings: safetySettings,
        modelName: modelName,
      );

  @override
  Future<Candidates?> text(
    String text, {
    String? modelName,
    List<SafetySetting>? safetySettings,
    GenerationConfig? generationConfig,
  }) =>
      _impl.text(
        text,
        generationConfig: generationConfig,
        safetySettings: safetySettings,
        modelName: modelName,
      );

  @override
  Future<List<List<num>?>?> batchEmbedContents(
    List<String> texts, {
    String? modelName,
    List<SafetySetting>? safetySettings,
    GenerationConfig? generationConfig,
  }) =>
      _impl.batchEmbedContents(
        texts,
        safetySettings: safetySettings,
        generationConfig: generationConfig,
        modelName: modelName,
      );

  @override
  Future<List<num>?> embedContent(
    String text, {
    String? modelName,
    List<SafetySetting>? safetySettings,
    GenerationConfig? generationConfig,
  }) =>
      _impl.embedContent(
        text,
        safetySettings: safetySettings,
        generationConfig: generationConfig,
        modelName: modelName,
      );

  GeminiResponseProvider? typeProvider;
}
