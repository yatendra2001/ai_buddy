import 'package:ai_buddy/feature/gemini/src/models/content/content.dart';
import 'package:ai_buddy/feature/gemini/src/models/safety_ratings/safety_ratings.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'candidates.freezed.dart';
part 'candidates.g.dart';

@freezed
class Candidates with _$Candidates {
  factory Candidates({
    Content? content,
    String? finishReason,
    int? index,
    List<SafetyRatings>? safetyRatings,
  }) = _Candidates;

  factory Candidates.fromJson(Map<String, Object?> json) =>
      _$CandidatesFromJson(json);

  static List<Candidates> jsonToList(List list) =>
      list.map((e) => Candidates.fromJson(e as Map<String, dynamic>)).toList();
}
