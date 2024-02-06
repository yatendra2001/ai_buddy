// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generation_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenerationConfig _$GenerationConfigFromJson(Map<String, dynamic> json) {
  return _GenerationConfig.fromJson(json);
}

/// @nodoc
mixin _$GenerationConfig {
  @JsonKey(name: 'stopSequences')
  List<String>? get stopSequences => throw _privateConstructorUsedError;
  @JsonKey(name: 'stopSequences')
  set stopSequences(List<String>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature')
  double? get temperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature')
  set temperature(double? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'maxOutputTokens')
  int? get maxOutputTokens => throw _privateConstructorUsedError;
  @JsonKey(name: 'maxOutputTokens')
  set maxOutputTokens(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'topP')
  double? get topP => throw _privateConstructorUsedError;
  @JsonKey(name: 'topP')
  set topP(double? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'topK')
  int? get topK => throw _privateConstructorUsedError;
  @JsonKey(name: 'topK')
  set topK(int? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenerationConfigCopyWith<GenerationConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerationConfigCopyWith<$Res> {
  factory $GenerationConfigCopyWith(
          GenerationConfig value, $Res Function(GenerationConfig) then) =
      _$GenerationConfigCopyWithImpl<$Res, GenerationConfig>;
  @useResult
  $Res call(
      {@JsonKey(name: 'stopSequences') List<String>? stopSequences,
      @JsonKey(name: 'temperature') double? temperature,
      @JsonKey(name: 'maxOutputTokens') int? maxOutputTokens,
      @JsonKey(name: 'topP') double? topP,
      @JsonKey(name: 'topK') int? topK});
}

/// @nodoc
class _$GenerationConfigCopyWithImpl<$Res, $Val extends GenerationConfig>
    implements $GenerationConfigCopyWith<$Res> {
  _$GenerationConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stopSequences = freezed,
    Object? temperature = freezed,
    Object? maxOutputTokens = freezed,
    Object? topP = freezed,
    Object? topK = freezed,
  }) {
    return _then(_value.copyWith(
      stopSequences: freezed == stopSequences
          ? _value.stopSequences
          : stopSequences // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      maxOutputTokens: freezed == maxOutputTokens
          ? _value.maxOutputTokens
          : maxOutputTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      topP: freezed == topP
          ? _value.topP
          : topP // ignore: cast_nullable_to_non_nullable
              as double?,
      topK: freezed == topK
          ? _value.topK
          : topK // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenerationConfigImplCopyWith<$Res>
    implements $GenerationConfigCopyWith<$Res> {
  factory _$$GenerationConfigImplCopyWith(_$GenerationConfigImpl value,
          $Res Function(_$GenerationConfigImpl) then) =
      __$$GenerationConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'stopSequences') List<String>? stopSequences,
      @JsonKey(name: 'temperature') double? temperature,
      @JsonKey(name: 'maxOutputTokens') int? maxOutputTokens,
      @JsonKey(name: 'topP') double? topP,
      @JsonKey(name: 'topK') int? topK});
}

/// @nodoc
class __$$GenerationConfigImplCopyWithImpl<$Res>
    extends _$GenerationConfigCopyWithImpl<$Res, _$GenerationConfigImpl>
    implements _$$GenerationConfigImplCopyWith<$Res> {
  __$$GenerationConfigImplCopyWithImpl(_$GenerationConfigImpl _value,
      $Res Function(_$GenerationConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stopSequences = freezed,
    Object? temperature = freezed,
    Object? maxOutputTokens = freezed,
    Object? topP = freezed,
    Object? topK = freezed,
  }) {
    return _then(_$GenerationConfigImpl(
      stopSequences: freezed == stopSequences
          ? _value.stopSequences
          : stopSequences // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      maxOutputTokens: freezed == maxOutputTokens
          ? _value.maxOutputTokens
          : maxOutputTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      topP: freezed == topP
          ? _value.topP
          : topP // ignore: cast_nullable_to_non_nullable
              as double?,
      topK: freezed == topK
          ? _value.topK
          : topK // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenerationConfigImpl
    with DiagnosticableTreeMixin
    implements _GenerationConfig {
  _$GenerationConfigImpl(
      {@JsonKey(name: 'stopSequences') this.stopSequences,
      @JsonKey(name: 'temperature') this.temperature,
      @JsonKey(name: 'maxOutputTokens') this.maxOutputTokens,
      @JsonKey(name: 'topP') this.topP,
      @JsonKey(name: 'topK') this.topK});

  factory _$GenerationConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenerationConfigImplFromJson(json);

  @override
  @JsonKey(name: 'stopSequences')
  List<String>? stopSequences;
  @override
  @JsonKey(name: 'temperature')
  double? temperature;
  @override
  @JsonKey(name: 'maxOutputTokens')
  int? maxOutputTokens;
  @override
  @JsonKey(name: 'topP')
  double? topP;
  @override
  @JsonKey(name: 'topK')
  int? topK;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GenerationConfig(stopSequences: $stopSequences, temperature: $temperature, maxOutputTokens: $maxOutputTokens, topP: $topP, topK: $topK)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GenerationConfig'))
      ..add(DiagnosticsProperty('stopSequences', stopSequences))
      ..add(DiagnosticsProperty('temperature', temperature))
      ..add(DiagnosticsProperty('maxOutputTokens', maxOutputTokens))
      ..add(DiagnosticsProperty('topP', topP))
      ..add(DiagnosticsProperty('topK', topK));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerationConfigImplCopyWith<_$GenerationConfigImpl> get copyWith =>
      __$$GenerationConfigImplCopyWithImpl<_$GenerationConfigImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenerationConfigImplToJson(
      this,
    );
  }
}

abstract class _GenerationConfig implements GenerationConfig {
  factory _GenerationConfig(
      {@JsonKey(name: 'stopSequences') List<String>? stopSequences,
      @JsonKey(name: 'temperature') double? temperature,
      @JsonKey(name: 'maxOutputTokens') int? maxOutputTokens,
      @JsonKey(name: 'topP') double? topP,
      @JsonKey(name: 'topK') int? topK}) = _$GenerationConfigImpl;

  factory _GenerationConfig.fromJson(Map<String, dynamic> json) =
      _$GenerationConfigImpl.fromJson;

  @override
  @JsonKey(name: 'stopSequences')
  List<String>? get stopSequences;
  @JsonKey(name: 'stopSequences')
  set stopSequences(List<String>? value);
  @override
  @JsonKey(name: 'temperature')
  double? get temperature;
  @JsonKey(name: 'temperature')
  set temperature(double? value);
  @override
  @JsonKey(name: 'maxOutputTokens')
  int? get maxOutputTokens;
  @JsonKey(name: 'maxOutputTokens')
  set maxOutputTokens(int? value);
  @override
  @JsonKey(name: 'topP')
  double? get topP;
  @JsonKey(name: 'topP')
  set topP(double? value);
  @override
  @JsonKey(name: 'topK')
  int? get topK;
  @JsonKey(name: 'topK')
  set topK(int? value);
  @override
  @JsonKey(ignore: true)
  _$$GenerationConfigImplCopyWith<_$GenerationConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
