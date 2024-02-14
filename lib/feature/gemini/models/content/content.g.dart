// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContentImpl _$$ContentImplFromJson(Map<String, dynamic> json) =>
    _$ContentImpl(
      parts: (json['parts'] as List<dynamic>?)
          ?.map((e) => Parts.fromJson(e as Map<String, dynamic>))
          .toList(),
      role: json['role'] as String?,
    );

Map<String, dynamic> _$$ContentImplToJson(_$ContentImpl instance) =>
    <String, dynamic>{
      'parts': instance.parts,
      'role': instance.role,
    };
