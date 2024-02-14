import 'package:ai_buddy/feature/gemini/models/parts/parts.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'content.freezed.dart';
part 'content.g.dart';

@freezed
class Content with _$Content {
  factory Content({
    List<Parts>? parts,
    String? role,
  }) = _Content;

  factory Content.fromJson(Map<String, Object?> json) =>
      _$ContentFromJson(json);

  static List<Content> jsonToList(List list) =>
      list.map((e) => Content.fromJson(e as Map<String, dynamic>)).toList();
}
