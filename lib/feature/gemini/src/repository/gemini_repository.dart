// ignore_for_file: lines_longer_than_80_chars, use_string_buffers

import 'dart:convert';
import 'dart:typed_data';

import 'package:ai_buddy/feature/gemini/gemini.dart';
import 'package:ai_buddy/feature/gemini/src/config/constants.dart';
import 'package:ai_buddy/feature/gemini/src/models/candidates/candidates.dart';
import 'package:ai_buddy/feature/gemini/src/repository/base_gemini_repository.dart';
import 'package:ai_buddy/feature/gemini/src/repository/network_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class GeminiRepository implements BaseGeminiRepository {
  GeminiRepository({
    required this.api,
    this.safetySettings,
    this.generationConfig,
  }) {
    api
      ..safetySettings = safetySettings
      ..generationConfig = generationConfig;
  }
  final NetworkService api;

  final splitter = const LineSplitter();

  final List<SafetySetting>? safetySettings;
  final GenerationConfig? generationConfig;

  @override
  Future<Candidates?> chat(
    List<Content> chats, {
    String? modelName,
    List<SafetySetting>? safetySettings,
    GenerationConfig? generationConfig,
  }) async {
    Gemini.instance.typeProvider?.clear();

    final response = await api.post(
      '${modelName ?? Constants.defaultModel}:${Constants.defaultGenerateType}',
      data: {'contents': chats.map((e) => e.toJson()).toList()},
      generationConfig: generationConfig,
      safetySettings: safetySettings,
    );
    Gemini.instance.typeProvider?.loading = false;
    return GeminiResponse.fromJson(response.data as Map<String, dynamic>)
        .candidates
        ?.lastOrNull;
  }

  @override
  Future<int?> countTokens(
    String text, {
    String? modelName,
    List<SafetySetting>? safetySettings,
    GenerationConfig? generationConfig,
  }) async {
    Gemini.instance.typeProvider?.clear();
    final response = await api.post(
      '${modelName ?? Constants.defaultModel}:countTokens',
      data: {
        'contents': [
          {
            'parts': [
              {'text': text},
            ],
          }
        ],
      },
      generationConfig: generationConfig,
      safetySettings: safetySettings,
    );
    Gemini.instance.typeProvider?.loading = false;
    return response.data?['totalTokens'] as int?;
  }

  @override
  Future<GeminiModel> info({required String model}) async {
    Gemini.instance.typeProvider?.clear();
    final response = await api.get('models/$model');

    Gemini.instance.typeProvider?.loading = false;
    return GeminiModel.fromJson(response.data as Map<String, dynamic>);
  }

  @override
  Future<List<GeminiModel>> listModels() async {
    Gemini.instance.typeProvider?.clear();
    final response = await api.get('models');
    Gemini.instance.typeProvider?.loading = false;
    return (response.data['models'] as List)
        .map(
          (e) => GeminiModel.fromJson(e as Map<String, dynamic>),
        )
        .toList();
  }

  @override
  Stream<Candidates> streamChat(
    List<Content> chats, {
    String? modelName,
    List<SafetySetting>? safetySettings,
    GenerationConfig? generationConfig,
  }) async* {
    Gemini.instance.typeProvider?.clear();

    final response = await api.post(
      '${modelName ?? Constants.defaultModel}:streamGenerateContent',
      isStreamResponse: true,
      data: {'contents': chats.map((e) => e.toJson()).toList()},
      generationConfig: generationConfig,
      safetySettings: safetySettings,
    );

    Gemini.instance.typeProvider?.loading = false;
    if (response.statusCode == 200) {
      final ResponseBody rb = response.data as ResponseBody;
      int index = 0;
      String modelStr = '';
      List<int> cacheUnits = [];
      List<int> list = [];

      await for (final itemList in rb.stream) {
        list = cacheUnits + itemList;

        cacheUnits.clear();

        String res = '';
        try {
          res = utf8.decode(list);
        } catch (e) {
          cacheUnits = list;
          continue;
        }

        res = res.trim();

        if (index == 0 && res.startsWith('[')) {
          res = res.replaceFirst('[', '');
        }
        if (res.startsWith(',')) {
          res = res.replaceFirst(',', '');
        }
        if (res.endsWith(']')) {
          res = res.substring(0, res.length - 1);
        }

        res = res.trim();

        for (final line in splitter.convert(res)) {
          if (modelStr == '' && line == ',') {
            continue;
          }
          modelStr += line;
          try {
            final candidate = Candidates.fromJson(
              (jsonDecode(modelStr)['candidates'] as List?)!.firstOrNull
                  as Map<String, dynamic>,
            );
            yield candidate;
            Gemini.instance.typeProvider?.add(candidate.output);
            modelStr = '';
          } catch (e) {
            continue;
          }
        }
        index++;
      }
    }
  }

  @override
  Stream<Candidates> streamGenerateContent(
    String text, {
    List<Uint8List>? images,
    String? modelName,
    List<SafetySetting>? safetySettings,
    GenerationConfig? generationConfig,
  }) async* {
    Gemini.instance.typeProvider?.clear();

    final response = await api.post(
      '${modelName ?? (
            (images?.isNotEmpty ?? false)
                ? 'models/gemini-pro-vision'
                : Constants.defaultModel,
          )}:streamGenerateContent',
      isStreamResponse: true,
      data: {
        'contents': [
          {
            'parts': [
              {'text': text},
              ...?images?.map(
                (e) => {
                  'inline_data': {
                    'mime_type': 'image/jpeg',
                    'data': base64Encode(e),
                  },
                },
              ),
            ],
          }
        ],
      },
      generationConfig: generationConfig,
      safetySettings: safetySettings,
    );
    Gemini.instance.typeProvider?.loading = false;

    if (response.statusCode == 200) {
      final ResponseBody rb = response.data as ResponseBody;
      int index = 0;
      String modelStr = '';
      List<int> cacheUnits = [];
      List<int> list = [];

      await for (final itemList in rb.stream) {
        list = cacheUnits + itemList;

        cacheUnits.clear();

        String res = '';
        try {
          res = utf8.decode(list);
        } catch (e) {
          debugPrint('error: $e');
          cacheUnits = list;
          continue;
        }

        res = res.trim();

        if (index == 0 && res.startsWith('[')) {
          res = res.replaceFirst('[', '');
        }
        if (res.startsWith(',')) {
          res = res.replaceFirst(',', '');
        }
        if (res.endsWith(']')) {
          res = res.substring(0, res.length - 1);
        }

        res = res.trim();

        for (final line in splitter.convert(res)) {
          if (modelStr == '' && line == ',') {
            continue;
          }
          modelStr += line;
          try {
            final candidate = Candidates.fromJson(
              (jsonDecode(modelStr)['candidates'] as List?)!.firstOrNull
                  as Map<String, dynamic>,
            );
            yield candidate;
            Gemini.instance.typeProvider?.add(candidate.output);
            modelStr = '';
          } catch (e) {
            continue;
          }
        }
        index++;
      }
    }
  }

  @override
  Future<Candidates?> textAndImage({
    required String text,
    required List<Uint8List> images,
    String? modelName,
    List<SafetySetting>? safetySettings,
    GenerationConfig? generationConfig,
  }) async {
    Gemini.instance.typeProvider?.clear();
    final response = await api.post(
      "${modelName ?? 'models/gemini-pro-vision'}:${Constants.defaultGenerateType}",
      data: {
        'contents': [
          {
            'parts': [
              {'text': text},
              ...images.map(
                (e) => {
                  'inline_data': {
                    'mime_type': 'image/jpeg',
                    'data': base64Encode(e),
                  },
                },
              ),
            ],
          }
        ],
      },
      generationConfig: generationConfig,
      safetySettings: safetySettings,
    );
    Gemini.instance.typeProvider?.loading = false;
    return GeminiResponse.fromJson(response.data as Map<String, dynamic>)
        .candidates
        ?.lastOrNull;
  }

  @override
  Future<Candidates?> text(
    String text, {
    String? modelName,
    List<SafetySetting>? safetySettings,
    GenerationConfig? generationConfig,
  }) async {
    Gemini.instance.typeProvider?.clear();
    final response = await api.post(
      '${modelName ?? Constants.defaultModel}:${Constants.defaultGenerateType}',
      data: {
        'contents': [
          {
            'parts': [
              {'text': text},
            ],
          }
        ],
      },
      generationConfig: generationConfig,
      safetySettings: safetySettings,
    );

    final candidate =
        GeminiResponse.fromJson(response.data as Map<String, dynamic>)
            .candidates
            ?.lastOrNull;
    Gemini.instance.typeProvider?.add(candidate?.output);
    return candidate;
  }

  @override
  Future<List<List<num>?>?> batchEmbedContents(
    List<String> texts, {
    String? modelName,
    List<SafetySetting>? safetySettings,
    GenerationConfig? generationConfig,
  }) async {
    Gemini.instance.typeProvider?.clear();
    final response = await api.post(
      "${modelName ?? 'models/embedding-001'}:batchEmbedContents",
      data: {
        'requests': texts
            .map(
              (e) => {
                'model': 'models/embedding-001',
                'content': {
                  'parts': [
                    {'text': e},
                  ],
                },
              },
            )
            .toList(),
      },
      generationConfig: generationConfig,
      safetySettings: safetySettings,
    );

    Gemini.instance.typeProvider?.loading = false;
    return (response.data['embeddings'] as List)
        .map((e) => (e['values'] as List).cast<num>())
        .toList();
  }

  @override
  Future<List<num>?> embedContent(
    String text, {
    String? modelName,
    List<SafetySetting>? safetySettings,
    GenerationConfig? generationConfig,
  }) async {
    Gemini.instance.typeProvider?.clear();
    final response = await api.post(
      "${modelName ?? 'models/embedding-001'}:embedContent",
      data: {
        'model': 'models/embedding-001',
        'content': {
          'parts': [
            {'text': text},
          ],
        },
      },
      generationConfig: generationConfig,
      safetySettings: safetySettings,
    );
    Gemini.instance.typeProvider?.loading = false;
    return (response.data['embedding']['values'] as List).cast<num>();
  }
}
