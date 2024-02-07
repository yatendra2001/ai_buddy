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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenerationConfig _$GenerationConfigFromJson(Map<String, dynamic> json) {
  return _GenerationConfig.fromJson(json);
}

/// @nodoc
mixin _$GenerationConfig {
  List<String>? get stopSequences => throw _privateConstructorUsedError;
  double? get temperature => throw _privateConstructorUsedError;
  int? get maxOutputTokens => throw _privateConstructorUsedError;
  double? get topP => throw _privateConstructorUsedError;
  int? get topK => throw _privateConstructorUsedError;

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
      {List<String>? stopSequences,
      double? temperature,
      int? maxOutputTokens,
      double? topP,
      int? topK});
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
      {List<String>? stopSequences,
      double? temperature,
      int? maxOutputTokens,
      double? topP,
      int? topK});
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
          ? _value._stopSequences
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
      {final List<String>? stopSequences,
      this.temperature,
      this.maxOutputTokens,
      this.topP,
      this.topK})
      : _stopSequences = stopSequences;

  factory _$GenerationConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenerationConfigImplFromJson(json);

  final List<String>? _stopSequences;
  @override
  List<String>? get stopSequences {
    final value = _stopSequences;
    if (value == null) return null;
    if (_stopSequences is EqualUnmodifiableListView) return _stopSequences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? temperature;
  @override
  final int? maxOutputTokens;
  @override
  final double? topP;
  @override
  final int? topK;

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

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerationConfigImpl &&
            const DeepCollectionEquality()
                .equals(other._stopSequences, _stopSequences) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.maxOutputTokens, maxOutputTokens) ||
                other.maxOutputTokens == maxOutputTokens) &&
            (identical(other.topP, topP) || other.topP == topP) &&
            (identical(other.topK, topK) || other.topK == topK));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_stopSequences),
      temperature,
      maxOutputTokens,
      topP,
      topK);

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
      {final List<String>? stopSequences,
      final double? temperature,
      final int? maxOutputTokens,
      final double? topP,
      final int? topK}) = _$GenerationConfigImpl;

  factory _GenerationConfig.fromJson(Map<String, dynamic> json) =
      _$GenerationConfigImpl.fromJson;

  @override
  List<String>? get stopSequences;
  @override
  double? get temperature;
  @override
  int? get maxOutputTokens;
  @override
  double? get topP;
  @override
  int? get topK;
  @override
  @JsonKey(ignore: true)
  _$$GenerationConfigImplCopyWith<_$GenerationConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
