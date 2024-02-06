// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Parts _$PartsFromJson(Map<String, dynamic> json) {
  return _Parts.fromJson(json);
}

/// @nodoc
mixin _$Parts {
  @JsonKey(name: 'text')
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'text')
  set text(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PartsCopyWith<Parts> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartsCopyWith<$Res> {
  factory $PartsCopyWith(Parts value, $Res Function(Parts) then) =
      _$PartsCopyWithImpl<$Res, Parts>;
  @useResult
  $Res call({@JsonKey(name: 'text') String? text});
}

/// @nodoc
class _$PartsCopyWithImpl<$Res, $Val extends Parts>
    implements $PartsCopyWith<$Res> {
  _$PartsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PartsImplCopyWith<$Res> implements $PartsCopyWith<$Res> {
  factory _$$PartsImplCopyWith(
          _$PartsImpl value, $Res Function(_$PartsImpl) then) =
      __$$PartsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'text') String? text});
}

/// @nodoc
class __$$PartsImplCopyWithImpl<$Res>
    extends _$PartsCopyWithImpl<$Res, _$PartsImpl>
    implements _$$PartsImplCopyWith<$Res> {
  __$$PartsImplCopyWithImpl(
      _$PartsImpl _value, $Res Function(_$PartsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_$PartsImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartsImpl with DiagnosticableTreeMixin implements _Parts {
  _$PartsImpl({@JsonKey(name: 'text') this.text});

  factory _$PartsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartsImplFromJson(json);

  @override
  @JsonKey(name: 'text')
  String? text;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Parts(text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Parts'))
      ..add(DiagnosticsProperty('text', text));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PartsImplCopyWith<_$PartsImpl> get copyWith =>
      __$$PartsImplCopyWithImpl<_$PartsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartsImplToJson(
      this,
    );
  }
}

abstract class _Parts implements Parts {
  factory _Parts({@JsonKey(name: 'text') String? text}) = _$PartsImpl;

  factory _Parts.fromJson(Map<String, dynamic> json) = _$PartsImpl.fromJson;

  @override
  @JsonKey(name: 'text')
  String? get text;
  @JsonKey(name: 'text')
  set text(String? value);
  @override
  @JsonKey(ignore: true)
  _$$PartsImplCopyWith<_$PartsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
