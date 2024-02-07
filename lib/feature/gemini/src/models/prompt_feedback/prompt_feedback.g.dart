// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prompt_feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromptFeedbackImpl _$$PromptFeedbackImplFromJson(Map<String, dynamic> json) =>
    _$PromptFeedbackImpl(
      safetyRatings: (json['safetyRatings'] as List<dynamic>?)
          ?.map((e) => SafetyRatings.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PromptFeedbackImplToJson(
        _$PromptFeedbackImpl instance) =>
    <String, dynamic>{
      'safetyRatings': instance.safetyRatings,
    };
