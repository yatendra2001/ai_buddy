import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generation_config.freezed.dart';
part 'generation_config.g.dart';

@freezed
class GenerationConfig with _$GenerationConfig {
  factory GenerationConfig({
    List<String>? stopSequences,
    double? temperature,
    int? maxOutputTokens,
    double? topP,
    int? topK,
  }) = _GenerationConfig;

  factory GenerationConfig.fromJson(Map<String, Object?> json) =>
      _$GenerationConfigFromJson(json);

  static List<GenerationConfig> jsonToList(List list) => list
      .map((e) => GenerationConfig.fromJson(e as Map<String, dynamic>))
      .toList();
}
