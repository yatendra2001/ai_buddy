// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'safety_ratings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SafetyRatings _$SafetyRatingsFromJson(Map<String, dynamic> json) {
  return _SafetyRatings.fromJson(json);
}

/// @nodoc
mixin _$SafetyRatings {
  @JsonKey(name: 'category')
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  set category(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'probability')
  String? get probability => throw _privateConstructorUsedError;
  @JsonKey(name: 'probability')
  set probability(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SafetyRatingsCopyWith<SafetyRatings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SafetyRatingsCopyWith<$Res> {
  factory $SafetyRatingsCopyWith(
          SafetyRatings value, $Res Function(SafetyRatings) then) =
      _$SafetyRatingsCopyWithImpl<$Res, SafetyRatings>;
  @useResult
  $Res call(
      {@JsonKey(name: 'category') String? category,
      @JsonKey(name: 'probability') String? probability});
}

/// @nodoc
class _$SafetyRatingsCopyWithImpl<$Res, $Val extends SafetyRatings>
    implements $SafetyRatingsCopyWith<$Res> {
  _$SafetyRatingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? probability = freezed,
  }) {
    return _then(_value.copyWith(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      probability: freezed == probability
          ? _value.probability
          : probability // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SafetyRatingsImplCopyWith<$Res>
    implements $SafetyRatingsCopyWith<$Res> {
  factory _$$SafetyRatingsImplCopyWith(
          _$SafetyRatingsImpl value, $Res Function(_$SafetyRatingsImpl) then) =
      __$$SafetyRatingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'category') String? category,
      @JsonKey(name: 'probability') String? probability});
}

/// @nodoc
class __$$SafetyRatingsImplCopyWithImpl<$Res>
    extends _$SafetyRatingsCopyWithImpl<$Res, _$SafetyRatingsImpl>
    implements _$$SafetyRatingsImplCopyWith<$Res> {
  __$$SafetyRatingsImplCopyWithImpl(
      _$SafetyRatingsImpl _value, $Res Function(_$SafetyRatingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? probability = freezed,
  }) {
    return _then(_$SafetyRatingsImpl(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      probability: freezed == probability
          ? _value.probability
          : probability // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SafetyRatingsImpl
    with DiagnosticableTreeMixin
    implements _SafetyRatings {
  _$SafetyRatingsImpl(
      {@JsonKey(name: 'category') this.category,
      @JsonKey(name: 'probability') this.probability});

  factory _$SafetyRatingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SafetyRatingsImplFromJson(json);

  @override
  @JsonKey(name: 'category')
  String? category;
  @override
  @JsonKey(name: 'probability')
  String? probability;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SafetyRatings(category: $category, probability: $probability)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SafetyRatings'))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('probability', probability));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SafetyRatingsImplCopyWith<_$SafetyRatingsImpl> get copyWith =>
      __$$SafetyRatingsImplCopyWithImpl<_$SafetyRatingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SafetyRatingsImplToJson(
      this,
    );
  }
}

abstract class _SafetyRatings implements SafetyRatings {
  factory _SafetyRatings(
      {@JsonKey(name: 'category') String? category,
      @JsonKey(name: 'probability') String? probability}) = _$SafetyRatingsImpl;

  factory _SafetyRatings.fromJson(Map<String, dynamic> json) =
      _$SafetyRatingsImpl.fromJson;

  @override
  @JsonKey(name: 'category')
  String? get category;
  @JsonKey(name: 'category')
  set category(String? value);
  @override
  @JsonKey(name: 'probability')
  String? get probability;
  @JsonKey(name: 'probability')
  set probability(String? value);
  @override
  @JsonKey(ignore: true)
  _$$SafetyRatingsImplCopyWith<_$SafetyRatingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
