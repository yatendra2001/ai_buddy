// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'candidates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Candidates _$CandidatesFromJson(Map<String, dynamic> json) {
  return _Candidates.fromJson(json);
}

/// @nodoc
mixin _$Candidates {
  @JsonKey(name: 'content')
  Content? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  set content(Content? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'finishReason')
  String? get finishReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'finishReason')
  set finishReason(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'index')
  int? get index => throw _privateConstructorUsedError;
  @JsonKey(name: 'index')
  set index(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'safetyRatings')
  List<SafetyRatings>? get safetyRatings => throw _privateConstructorUsedError;
  @JsonKey(name: 'safetyRatings')
  set safetyRatings(List<SafetyRatings>? value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CandidatesCopyWith<Candidates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CandidatesCopyWith<$Res> {
  factory $CandidatesCopyWith(
          Candidates value, $Res Function(Candidates) then) =
      _$CandidatesCopyWithImpl<$Res, Candidates>;
  @useResult
  $Res call(
      {@JsonKey(name: 'content') Content? content,
      @JsonKey(name: 'finishReason') String? finishReason,
      @JsonKey(name: 'index') int? index,
      @JsonKey(name: 'safetyRatings') List<SafetyRatings>? safetyRatings});

  $ContentCopyWith<$Res>? get content;
}

/// @nodoc
class _$CandidatesCopyWithImpl<$Res, $Val extends Candidates>
    implements $CandidatesCopyWith<$Res> {
  _$CandidatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? finishReason = freezed,
    Object? index = freezed,
    Object? safetyRatings = freezed,
  }) {
    return _then(_value.copyWith(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Content?,
      finishReason: freezed == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      safetyRatings: freezed == safetyRatings
          ? _value.safetyRatings
          : safetyRatings // ignore: cast_nullable_to_non_nullable
              as List<SafetyRatings>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContentCopyWith<$Res>? get content {
    if (_value.content == null) {
      return null;
    }

    return $ContentCopyWith<$Res>(_value.content!, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CandidatesImplCopyWith<$Res>
    implements $CandidatesCopyWith<$Res> {
  factory _$$CandidatesImplCopyWith(
          _$CandidatesImpl value, $Res Function(_$CandidatesImpl) then) =
      __$$CandidatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'content') Content? content,
      @JsonKey(name: 'finishReason') String? finishReason,
      @JsonKey(name: 'index') int? index,
      @JsonKey(name: 'safetyRatings') List<SafetyRatings>? safetyRatings});

  @override
  $ContentCopyWith<$Res>? get content;
}

/// @nodoc
class __$$CandidatesImplCopyWithImpl<$Res>
    extends _$CandidatesCopyWithImpl<$Res, _$CandidatesImpl>
    implements _$$CandidatesImplCopyWith<$Res> {
  __$$CandidatesImplCopyWithImpl(
      _$CandidatesImpl _value, $Res Function(_$CandidatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? finishReason = freezed,
    Object? index = freezed,
    Object? safetyRatings = freezed,
  }) {
    return _then(_$CandidatesImpl(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Content?,
      finishReason: freezed == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      safetyRatings: freezed == safetyRatings
          ? _value.safetyRatings
          : safetyRatings // ignore: cast_nullable_to_non_nullable
              as List<SafetyRatings>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CandidatesImpl with DiagnosticableTreeMixin implements _Candidates {
  _$CandidatesImpl(
      {@JsonKey(name: 'content') this.content,
      @JsonKey(name: 'finishReason') this.finishReason,
      @JsonKey(name: 'index') this.index,
      @JsonKey(name: 'safetyRatings') this.safetyRatings});

  factory _$CandidatesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CandidatesImplFromJson(json);

  @override
  @JsonKey(name: 'content')
  Content? content;
  @override
  @JsonKey(name: 'finishReason')
  String? finishReason;
  @override
  @JsonKey(name: 'index')
  int? index;
  @override
  @JsonKey(name: 'safetyRatings')
  List<SafetyRatings>? safetyRatings;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Candidates(content: $content, finishReason: $finishReason, index: $index, safetyRatings: $safetyRatings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Candidates'))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('finishReason', finishReason))
      ..add(DiagnosticsProperty('index', index))
      ..add(DiagnosticsProperty('safetyRatings', safetyRatings));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CandidatesImplCopyWith<_$CandidatesImpl> get copyWith =>
      __$$CandidatesImplCopyWithImpl<_$CandidatesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CandidatesImplToJson(
      this,
    );
  }
}

abstract class _Candidates implements Candidates {
  factory _Candidates(
          {@JsonKey(name: 'content') Content? content,
          @JsonKey(name: 'finishReason') String? finishReason,
          @JsonKey(name: 'index') int? index,
          @JsonKey(name: 'safetyRatings') List<SafetyRatings>? safetyRatings}) =
      _$CandidatesImpl;

  factory _Candidates.fromJson(Map<String, dynamic> json) =
      _$CandidatesImpl.fromJson;

  @override
  @JsonKey(name: 'content')
  Content? get content;
  @JsonKey(name: 'content')
  set content(Content? value);
  @override
  @JsonKey(name: 'finishReason')
  String? get finishReason;
  @JsonKey(name: 'finishReason')
  set finishReason(String? value);
  @override
  @JsonKey(name: 'index')
  int? get index;
  @JsonKey(name: 'index')
  set index(int? value);
  @override
  @JsonKey(name: 'safetyRatings')
  List<SafetyRatings>? get safetyRatings;
  @JsonKey(name: 'safetyRatings')
  set safetyRatings(List<SafetyRatings>? value);
  @override
  @JsonKey(ignore: true)
  _$$CandidatesImplCopyWith<_$CandidatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
