// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TripType _$TripTypeFromJson(Map<String, dynamic> json) {
  return _TripType.fromJson(json);
}

/// @nodoc
mixin _$TripType {
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripTypeCopyWith<TripType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripTypeCopyWith<$Res> {
  factory $TripTypeCopyWith(TripType value, $Res Function(TripType) then) =
      _$TripTypeCopyWithImpl<$Res, TripType>;
  @useResult
  $Res call({String title, String image});
}

/// @nodoc
class _$TripTypeCopyWithImpl<$Res, $Val extends TripType>
    implements $TripTypeCopyWith<$Res> {
  _$TripTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TripTypeCopyWith<$Res> implements $TripTypeCopyWith<$Res> {
  factory _$$_TripTypeCopyWith(
          _$_TripType value, $Res Function(_$_TripType) then) =
      __$$_TripTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String image});
}

/// @nodoc
class __$$_TripTypeCopyWithImpl<$Res>
    extends _$TripTypeCopyWithImpl<$Res, _$_TripType>
    implements _$$_TripTypeCopyWith<$Res> {
  __$$_TripTypeCopyWithImpl(
      _$_TripType _value, $Res Function(_$_TripType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? image = null,
  }) {
    return _then(_$_TripType(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TripType implements _TripType {
  const _$_TripType({required this.title, required this.image});

  factory _$_TripType.fromJson(Map<String, dynamic> json) =>
      _$$_TripTypeFromJson(json);

  @override
  final String title;
  @override
  final String image;

  @override
  String toString() {
    return 'TripType(title: $title, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TripType &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TripTypeCopyWith<_$_TripType> get copyWith =>
      __$$_TripTypeCopyWithImpl<_$_TripType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TripTypeToJson(
      this,
    );
  }
}

abstract class _TripType implements TripType {
  const factory _TripType(
      {required final String title, required final String image}) = _$_TripType;

  factory _TripType.fromJson(Map<String, dynamic> json) = _$_TripType.fromJson;

  @override
  String get title;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_TripTypeCopyWith<_$_TripType> get copyWith =>
      throw _privateConstructorUsedError;
}
