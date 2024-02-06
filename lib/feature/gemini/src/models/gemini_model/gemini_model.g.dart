// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gemini_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeminiModelImpl _$$GeminiModelImplFromJson(Map<String, dynamic> json) =>
    _$GeminiModelImpl(
      name: json['name'] as String?,
      version: json['version'] as String?,
      displayName: json['displayName'] as String?,
      description: json['description'] as String?,
      inputTokenLimit: json['inputTokenLimit'] as int?,
      outputTokenLimit: json['outputTokenLimit'] as int?,
      supportedGenerationMethods:
          (json['supportedGenerationMethods'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      temperature: (json['temperature'] as num?)?.toDouble(),
      topP: (json['topP'] as num?)?.toDouble(),
      topK: json['topK'] as int?,
    );

Map<String, dynamic> _$$GeminiModelImplToJson(_$GeminiModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'version': instance.version,
      'displayName': instance.displayName,
      'description': instance.description,
      'inputTokenLimit': instance.inputTokenLimit,
      'outputTokenLimit': instance.outputTokenLimit,
      'supportedGenerationMethods': instance.supportedGenerationMethods,
      'temperature': instance.temperature,
      'topP': instance.topP,
      'topK': instance.topK,
    };
