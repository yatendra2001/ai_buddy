// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generation_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenerationConfigImpl _$$GenerationConfigImplFromJson(
        Map<String, dynamic> json) =>
    _$GenerationConfigImpl(
      stopSequences: (json['stopSequences'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      temperature: (json['temperature'] as num?)?.toDouble(),
      maxOutputTokens: json['maxOutputTokens'] as int?,
      topP: (json['topP'] as num?)?.toDouble(),
      topK: json['topK'] as int?,
    );

Map<String, dynamic> _$$GenerationConfigImplToJson(
        _$GenerationConfigImpl instance) =>
    <String, dynamic>{
      'stopSequences': instance.stopSequences,
      'temperature': instance.temperature,
      'maxOutputTokens': instance.maxOutputTokens,
      'topP': instance.topP,
      'topK': instance.topK,
    };
