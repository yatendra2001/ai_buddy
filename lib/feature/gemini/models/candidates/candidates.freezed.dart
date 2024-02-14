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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Candidates _$CandidatesFromJson(Map<String, dynamic> json) {
  return _Candidates.fromJson(json);
}

/// @nodoc
mixin _$Candidates {
  Content? get content => throw _privateConstructorUsedError;
  String? get finishReason => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;

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
  $Res call({Content? content, String? finishReason, int? index});

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
  $Res call({Content? content, String? finishReason, int? index});

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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CandidatesImpl with DiagnosticableTreeMixin implements _Candidates {
  _$CandidatesImpl({this.content, this.finishReason, this.index});

  factory _$CandidatesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CandidatesImplFromJson(json);

  @override
  final Content? content;
  @override
  final String? finishReason;
  @override
  final int? index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Candidates(content: $content, finishReason: $finishReason, index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Candidates'))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('finishReason', finishReason))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CandidatesImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.finishReason, finishReason) ||
                other.finishReason == finishReason) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, finishReason, index);

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
      {final Content? content,
      final String? finishReason,
      final int? index}) = _$CandidatesImpl;

  factory _Candidates.fromJson(Map<String, dynamic> json) =
      _$CandidatesImpl.fromJson;

  @override
  Content? get content;
  @override
  String? get finishReason;
  @override
  int? get index;
  @override
  @JsonKey(ignore: true)
  _$$CandidatesImplCopyWith<_$CandidatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
