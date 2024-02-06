import 'package:ai_buddy/feature/gemini/src/models/candidates/candidates.dart';
import 'package:ai_buddy/feature/gemini/src/models/prompt_feedback/prompt_feedback.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gemini_response.freezed.dart';
part 'gemini_response.g.dart';

@freezed
class GeminiResponse with _$GeminiResponse {
  factory GeminiResponse({
    List<Candidates>? candidates,
    PromptFeedback? promptFeedback,
  }) = _GeminiResponse;

  factory GeminiResponse.fromJson(Map<String, Object?> json) =>
      _$GeminiResponseFromJson(json);

  static List<GeminiResponse> jsonToList(List list) => list
      .map((e) => GeminiResponse.fromJson(e as Map<String, dynamic>))
      .toList();
}
