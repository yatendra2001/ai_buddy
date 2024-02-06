// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gemini_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeminiModel _$GeminiModelFromJson(Map<String, dynamic> json) {
  return _GeminiModel.fromJson(json);
}

/// @nodoc
mixin _$GeminiModel {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  set name(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'version')
  String? get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'version')
  set version(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'displayName')
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'displayName')
  set displayName(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  set description(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'inputTokenLimit')
  int? get inputTokenLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'inputTokenLimit')
  set inputTokenLimit(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'outputTokenLimit')
  int? get outputTokenLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'outputTokenLimit')
  set outputTokenLimit(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'supportedGenerationMethods')
  List<String>? get supportedGenerationMethods =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'supportedGenerationMethods')
  set supportedGenerationMethods(List<String>? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature')
  double? get temperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature')
  set temperature(double? value) => throw _privateConstructorUsedError;
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
  $GeminiModelCopyWith<GeminiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeminiModelCopyWith<$Res> {
  factory $GeminiModelCopyWith(
          GeminiModel value, $Res Function(GeminiModel) then) =
      _$GeminiModelCopyWithImpl<$Res, GeminiModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'version') String? version,
      @JsonKey(name: 'displayName') String? displayName,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'inputTokenLimit') int? inputTokenLimit,
      @JsonKey(name: 'outputTokenLimit') int? outputTokenLimit,
      @JsonKey(name: 'supportedGenerationMethods')
      List<String>? supportedGenerationMethods,
      @JsonKey(name: 'temperature') double? temperature,
      @JsonKey(name: 'topP') double? topP,
      @JsonKey(name: 'topK') int? topK});
}

/// @nodoc
class _$GeminiModelCopyWithImpl<$Res, $Val extends GeminiModel>
    implements $GeminiModelCopyWith<$Res> {
  _$GeminiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? version = freezed,
    Object? displayName = freezed,
    Object? description = freezed,
    Object? inputTokenLimit = freezed,
    Object? outputTokenLimit = freezed,
    Object? supportedGenerationMethods = freezed,
    Object? temperature = freezed,
    Object? topP = freezed,
    Object? topK = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      inputTokenLimit: freezed == inputTokenLimit
          ? _value.inputTokenLimit
          : inputTokenLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      outputTokenLimit: freezed == outputTokenLimit
          ? _value.outputTokenLimit
          : outputTokenLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      supportedGenerationMethods: freezed == supportedGenerationMethods
          ? _value.supportedGenerationMethods
          : supportedGenerationMethods // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
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
abstract class _$$GeminiModelImplCopyWith<$Res>
    implements $GeminiModelCopyWith<$Res> {
  factory _$$GeminiModelImplCopyWith(
          _$GeminiModelImpl value, $Res Function(_$GeminiModelImpl) then) =
      __$$GeminiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'version') String? version,
      @JsonKey(name: 'displayName') String? displayName,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'inputTokenLimit') int? inputTokenLimit,
      @JsonKey(name: 'outputTokenLimit') int? outputTokenLimit,
      @JsonKey(name: 'supportedGenerationMethods')
      List<String>? supportedGenerationMethods,
      @JsonKey(name: 'temperature') double? temperature,
      @JsonKey(name: 'topP') double? topP,
      @JsonKey(name: 'topK') int? topK});
}

/// @nodoc
class __$$GeminiModelImplCopyWithImpl<$Res>
    extends _$GeminiModelCopyWithImpl<$Res, _$GeminiModelImpl>
    implements _$$GeminiModelImplCopyWith<$Res> {
  __$$GeminiModelImplCopyWithImpl(
      _$GeminiModelImpl _value, $Res Function(_$GeminiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? version = freezed,
    Object? displayName = freezed,
    Object? description = freezed,
    Object? inputTokenLimit = freezed,
    Object? outputTokenLimit = freezed,
    Object? supportedGenerationMethods = freezed,
    Object? temperature = freezed,
    Object? topP = freezed,
    Object? topK = freezed,
  }) {
    return _then(_$GeminiModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      inputTokenLimit: freezed == inputTokenLimit
          ? _value.inputTokenLimit
          : inputTokenLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      outputTokenLimit: freezed == outputTokenLimit
          ? _value.outputTokenLimit
          : outputTokenLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      supportedGenerationMethods: freezed == supportedGenerationMethods
          ? _value.supportedGenerationMethods
          : supportedGenerationMethods // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
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
class _$GeminiModelImpl with DiagnosticableTreeMixin implements _GeminiModel {
  _$GeminiModelImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'version') this.version,
      @JsonKey(name: 'displayName') this.displayName,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'inputTokenLimit') this.inputTokenLimit,
      @JsonKey(name: 'outputTokenLimit') this.outputTokenLimit,
      @JsonKey(name: 'supportedGenerationMethods')
      this.supportedGenerationMethods,
      @JsonKey(name: 'temperature') this.temperature,
      @JsonKey(name: 'topP') this.topP,
      @JsonKey(name: 'topK') this.topK});

  factory _$GeminiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeminiModelImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  String? name;
  @override
  @JsonKey(name: 'version')
  String? version;
  @override
  @JsonKey(name: 'displayName')
  String? displayName;
  @override
  @JsonKey(name: 'description')
  String? description;
  @override
  @JsonKey(name: 'inputTokenLimit')
  int? inputTokenLimit;
  @override
  @JsonKey(name: 'outputTokenLimit')
  int? outputTokenLimit;
  @override
  @JsonKey(name: 'supportedGenerationMethods')
  List<String>? supportedGenerationMethods;
  @override
  @JsonKey(name: 'temperature')
  double? temperature;
  @override
  @JsonKey(name: 'topP')
  double? topP;
  @override
  @JsonKey(name: 'topK')
  int? topK;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GeminiModel(name: $name, version: $version, displayName: $displayName, description: $description, inputTokenLimit: $inputTokenLimit, outputTokenLimit: $outputTokenLimit, supportedGenerationMethods: $supportedGenerationMethods, temperature: $temperature, topP: $topP, topK: $topK)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GeminiModel'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('version', version))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('inputTokenLimit', inputTokenLimit))
      ..add(DiagnosticsProperty('outputTokenLimit', outputTokenLimit))
      ..add(DiagnosticsProperty(
          'supportedGenerationMethods', supportedGenerationMethods))
      ..add(DiagnosticsProperty('temperature', temperature))
      ..add(DiagnosticsProperty('topP', topP))
      ..add(DiagnosticsProperty('topK', topK));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeminiModelImplCopyWith<_$GeminiModelImpl> get copyWith =>
      __$$GeminiModelImplCopyWithImpl<_$GeminiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeminiModelImplToJson(
      this,
    );
  }
}

abstract class _GeminiModel implements GeminiModel {
  factory _GeminiModel(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'version') String? version,
      @JsonKey(name: 'displayName') String? displayName,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'inputTokenLimit') int? inputTokenLimit,
      @JsonKey(name: 'outputTokenLimit') int? outputTokenLimit,
      @JsonKey(name: 'supportedGenerationMethods')
      List<String>? supportedGenerationMethods,
      @JsonKey(name: 'temperature') double? temperature,
      @JsonKey(name: 'topP') double? topP,
      @JsonKey(name: 'topK') int? topK}) = _$GeminiModelImpl;

  factory _GeminiModel.fromJson(Map<String, dynamic> json) =
      _$GeminiModelImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @JsonKey(name: 'name')
  set name(String? value);
  @override
  @JsonKey(name: 'version')
  String? get version;
  @JsonKey(name: 'version')
  set version(String? value);
  @override
  @JsonKey(name: 'displayName')
  String? get displayName;
  @JsonKey(name: 'displayName')
  set displayName(String? value);
  @override
  @JsonKey(name: 'description')
  String? get description;
  @JsonKey(name: 'description')
  set description(String? value);
  @override
  @JsonKey(name: 'inputTokenLimit')
  int? get inputTokenLimit;
  @JsonKey(name: 'inputTokenLimit')
  set inputTokenLimit(int? value);
  @override
  @JsonKey(name: 'outputTokenLimit')
  int? get outputTokenLimit;
  @JsonKey(name: 'outputTokenLimit')
  set outputTokenLimit(int? value);
  @override
  @JsonKey(name: 'supportedGenerationMethods')
  List<String>? get supportedGenerationMethods;
  @JsonKey(name: 'supportedGenerationMethods')
  set supportedGenerationMethods(List<String>? value);
  @override
  @JsonKey(name: 'temperature')
  double? get temperature;
  @JsonKey(name: 'temperature')
  set temperature(double? value);
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
  _$$GeminiModelImplCopyWith<_$GeminiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
