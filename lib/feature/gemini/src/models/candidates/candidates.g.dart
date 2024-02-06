// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candidates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CandidatesImpl _$$CandidatesImplFromJson(Map<String, dynamic> json) =>
    _$CandidatesImpl(
      content: json['content'] == null
          ? null
          : Content.fromJson(json['content'] as Map<String, dynamic>),
      finishReason: json['finishReason'] as String?,
      index: json['index'] as int?,
      safetyRatings: (json['safetyRatings'] as List<dynamic>?)
          ?.map((e) => SafetyRatings.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CandidatesImplToJson(_$CandidatesImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'finishReason': instance.finishReason,
      'index': instance.index,
      'safetyRatings': instance.safetyRatings,
    };
