// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gemini_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeminiResponseImpl _$$GeminiResponseImplFromJson(Map<String, dynamic> json) =>
    _$GeminiResponseImpl(
      candidates: (json['candidates'] as List<dynamic>?)
          ?.map((e) => Candidates.fromJson(e as Map<String, dynamic>))
          .toList(),
      promptFeedback: json['promptFeedback'] == null
          ? null
          : PromptFeedback.fromJson(
              json['promptFeedback'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GeminiResponseImplToJson(
        _$GeminiResponseImpl instance) =>
    <String, dynamic>{
      'candidates': instance.candidates,
      'promptFeedback': instance.promptFeedback,
    };
