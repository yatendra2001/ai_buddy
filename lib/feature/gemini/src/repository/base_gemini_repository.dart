import 'dart:async';
import 'dart:typed_data';

import 'package:ai_buddy/feature/gemini/flutter_gemini.dart';
import 'package:ai_buddy/feature/gemini/src/models/candidates/candidates.dart';

abstract class BaseGeminiRepository {
  Future<List<GeminiModel>> listModels();

  Future<GeminiModel> info({required String model});

  Future<Candidates?> text(
    String text, {
    String? modelName,
    List<SafetySetting>? safetySettings,
    GenerationConfig? generationConfig,
  });

  Future<List<List<num>?>?> batchEmbedContents(
    List<String> texts, {
    String? modelName,
    List<SafetySetting>? safetySettings,
    GenerationConfig? generationConfig,
  });

  Future<List<num>?> embedContent(
    String text, {
    String? modelName,
    List<SafetySetting>? safetySettings,
    GenerationConfig? generationConfig,
  });

  Future<int?> countTokens(
    String text, {
    String? modelName,
    List<SafetySetting>? safetySettings,
    GenerationConfig? generationConfig,
  });

  Stream<Candidates> streamGenerateContent(
    String text, {
    List<Uint8List>? images,
    String? modelName,
    List<SafetySetting>? safetySettings,
    GenerationConfig? generationConfig,
  });

  Stream<Candidates> streamChat(
    List<Content> chats, {
    String? modelName,
    List<SafetySetting>? safetySettings,
    GenerationConfig? generationConfig,
  });

  Future<Candidates?> chat(
    List<Content> chats, {
    String? modelName,
    List<SafetySetting>? safetySettings,
    GenerationConfig? generationConfig,
  });

  Future<Candidates?> textAndImage({
    required String text,
    required List<Uint8List> images,
    String? modelName,
    List<SafetySetting>? safetySettings,
    GenerationConfig? generationConfig,
  });
}
