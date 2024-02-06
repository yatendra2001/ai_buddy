// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prompt_feedback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PromptFeedback _$PromptFeedbackFromJson(Map<String, dynamic> json) {
  return _PromptFeedback.fromJson(json);
}

/// @nodoc
mixin _$PromptFeedback {
  @JsonKey(name: 'safetyRatings')
  List<SafetyRatings>? get safetyRatings => throw _privateConstructorUsedError;
  @JsonKey(name: 'safetyRatings')
  set safetyRatings(List<SafetyRatings>? value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromptFeedbackCopyWith<PromptFeedback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromptFeedbackCopyWith<$Res> {
  factory $PromptFeedbackCopyWith(
          PromptFeedback value, $Res Function(PromptFeedback) then) =
      _$PromptFeedbackCopyWithImpl<$Res, PromptFeedback>;
  @useResult
  $Res call(
      {@JsonKey(name: 'safetyRatings') List<SafetyRatings>? safetyRatings});
}

/// @nodoc
class _$PromptFeedbackCopyWithImpl<$Res, $Val extends PromptFeedback>
    implements $PromptFeedbackCopyWith<$Res> {
  _$PromptFeedbackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? safetyRatings = freezed,
  }) {
    return _then(_value.copyWith(
      safetyRatings: freezed == safetyRatings
          ? _value.safetyRatings
          : safetyRatings // ignore: cast_nullable_to_non_nullable
              as List<SafetyRatings>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromptFeedbackImplCopyWith<$Res>
    implements $PromptFeedbackCopyWith<$Res> {
  factory _$$PromptFeedbackImplCopyWith(_$PromptFeedbackImpl value,
          $Res Function(_$PromptFeedbackImpl) then) =
      __$$PromptFeedbackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'safetyRatings') List<SafetyRatings>? safetyRatings});
}

/// @nodoc
class __$$PromptFeedbackImplCopyWithImpl<$Res>
    extends _$PromptFeedbackCopyWithImpl<$Res, _$PromptFeedbackImpl>
    implements _$$PromptFeedbackImplCopyWith<$Res> {
  __$$PromptFeedbackImplCopyWithImpl(
      _$PromptFeedbackImpl _value, $Res Function(_$PromptFeedbackImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? safetyRatings = freezed,
  }) {
    return _then(_$PromptFeedbackImpl(
      safetyRatings: freezed == safetyRatings
          ? _value.safetyRatings
          : safetyRatings // ignore: cast_nullable_to_non_nullable
              as List<SafetyRatings>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromptFeedbackImpl
    with DiagnosticableTreeMixin
    implements _PromptFeedback {
  _$PromptFeedbackImpl({@JsonKey(name: 'safetyRatings') this.safetyRatings});

  factory _$PromptFeedbackImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromptFeedbackImplFromJson(json);

  @override
  @JsonKey(name: 'safetyRatings')
  List<SafetyRatings>? safetyRatings;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PromptFeedback(safetyRatings: $safetyRatings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PromptFeedback'))
      ..add(DiagnosticsProperty('safetyRatings', safetyRatings));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromptFeedbackImplCopyWith<_$PromptFeedbackImpl> get copyWith =>
      __$$PromptFeedbackImplCopyWithImpl<_$PromptFeedbackImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromptFeedbackImplToJson(
      this,
    );
  }
}

abstract class _PromptFeedback implements PromptFeedback {
  factory _PromptFeedback(
      {@JsonKey(name: 'safetyRatings')
      List<SafetyRatings>? safetyRatings}) = _$PromptFeedbackImpl;

  factory _PromptFeedback.fromJson(Map<String, dynamic> json) =
      _$PromptFeedbackImpl.fromJson;

  @override
  @JsonKey(name: 'safetyRatings')
  List<SafetyRatings>? get safetyRatings;
  @JsonKey(name: 'safetyRatings')
  set safetyRatings(List<SafetyRatings>? value);
  @override
  @JsonKey(ignore: true)
  _$$PromptFeedbackImplCopyWith<_$PromptFeedbackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
