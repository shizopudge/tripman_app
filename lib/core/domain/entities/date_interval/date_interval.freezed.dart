// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_interval.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DateInterval _$DateIntervalFromJson(Map<String, dynamic> json) {
  return _DateInterval.fromJson(json);
}

/// @nodoc
mixin _$DateInterval {
  DateTime get start => throw _privateConstructorUsedError;
  DateTime get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateIntervalCopyWith<DateInterval> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateIntervalCopyWith<$Res> {
  factory $DateIntervalCopyWith(
          DateInterval value, $Res Function(DateInterval) then) =
      _$DateIntervalCopyWithImpl<$Res, DateInterval>;
  @useResult
  $Res call({DateTime start, DateTime end});
}

/// @nodoc
class _$DateIntervalCopyWithImpl<$Res, $Val extends DateInterval>
    implements $DateIntervalCopyWith<$Res> {
  _$DateIntervalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DateIntervalCopyWith<$Res>
    implements $DateIntervalCopyWith<$Res> {
  factory _$$_DateIntervalCopyWith(
          _$_DateInterval value, $Res Function(_$_DateInterval) then) =
      __$$_DateIntervalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime start, DateTime end});
}

/// @nodoc
class __$$_DateIntervalCopyWithImpl<$Res>
    extends _$DateIntervalCopyWithImpl<$Res, _$_DateInterval>
    implements _$$_DateIntervalCopyWith<$Res> {
  __$$_DateIntervalCopyWithImpl(
      _$_DateInterval _value, $Res Function(_$_DateInterval) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$_DateInterval(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DateInterval implements _DateInterval {
  const _$_DateInterval({required this.start, required this.end});

  factory _$_DateInterval.fromJson(Map<String, dynamic> json) =>
      _$$_DateIntervalFromJson(json);

  @override
  final DateTime start;
  @override
  final DateTime end;

  @override
  String toString() {
    return 'DateInterval(start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateInterval &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DateIntervalCopyWith<_$_DateInterval> get copyWith =>
      __$$_DateIntervalCopyWithImpl<_$_DateInterval>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DateIntervalToJson(
      this,
    );
  }
}

abstract class _DateInterval implements DateInterval {
  const factory _DateInterval(
      {required final DateTime start,
      required final DateTime end}) = _$_DateInterval;

  factory _DateInterval.fromJson(Map<String, dynamic> json) =
      _$_DateInterval.fromJson;

  @override
  DateTime get start;
  @override
  DateTime get end;
  @override
  @JsonKey(ignore: true)
  _$$_DateIntervalCopyWith<_$_DateInterval> get copyWith =>
      throw _privateConstructorUsedError;
}
