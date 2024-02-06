import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gemini_model.freezed.dart';
part 'gemini_model.g.dart';

@freezed
class GeminiModel with _$GeminiModel {
  factory GeminiModel({
    String? name,
    String? version,
    String? displayName,
    String? description,
    int? inputTokenLimit,
    int? outputTokenLimit,
    List<String>? supportedGenerationMethods,
    double? temperature,
    double? topP,
    int? topK,
  }) = _GeminiModel;

  factory GeminiModel.fromJson(Map<String, Object?> json) =>
      _$GeminiModelFromJson(json);

  static List<GeminiModel> jsonToList(List list) =>
      list.map((e) => GeminiModel.fromJson(e as Map<String, dynamic>)).toList();
}
