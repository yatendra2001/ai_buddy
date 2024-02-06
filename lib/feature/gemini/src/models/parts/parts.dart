import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'parts.freezed.dart';
part 'parts.g.dart';

@freezed
class Parts with _$Parts {
  factory Parts({
    String? text,
  }) = _Parts;

  factory Parts.fromJson(Map<String, Object?> json) => _$PartsFromJson(json);

  static List<Parts> jsonToList(List list) =>
      list.map((e) => Parts.fromJson(e as Map<String, dynamic>)).toList();
}
