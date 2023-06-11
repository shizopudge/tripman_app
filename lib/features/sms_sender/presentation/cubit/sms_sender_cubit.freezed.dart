// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sms_sender_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SmsSenderState {
  String get phoneNumber => throw _privateConstructorUsedError;
  bool get isCorrect => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SmsSenderStateCopyWith<SmsSenderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmsSenderStateCopyWith<$Res> {
  factory $SmsSenderStateCopyWith(
          SmsSenderState value, $Res Function(SmsSenderState) then) =
      _$SmsSenderStateCopyWithImpl<$Res, SmsSenderState>;
  @useResult
  $Res call({String phoneNumber, bool isCorrect});
}

/// @nodoc
class _$SmsSenderStateCopyWithImpl<$Res, $Val extends SmsSenderState>
    implements $SmsSenderStateCopyWith<$Res> {
  _$SmsSenderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? isCorrect = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SmsSenderStateCopyWith<$Res>
    implements $SmsSenderStateCopyWith<$Res> {
  factory _$$_SmsSenderStateCopyWith(
          _$_SmsSenderState value, $Res Function(_$_SmsSenderState) then) =
      __$$_SmsSenderStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, bool isCorrect});
}

/// @nodoc
class __$$_SmsSenderStateCopyWithImpl<$Res>
    extends _$SmsSenderStateCopyWithImpl<$Res, _$_SmsSenderState>
    implements _$$_SmsSenderStateCopyWith<$Res> {
  __$$_SmsSenderStateCopyWithImpl(
      _$_SmsSenderState _value, $Res Function(_$_SmsSenderState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? isCorrect = null,
  }) {
    return _then(_$_SmsSenderState(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SmsSenderState implements _SmsSenderState {
  const _$_SmsSenderState({this.phoneNumber = '', this.isCorrect = false});

  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final bool isCorrect;

  @override
  String toString() {
    return 'SmsSenderState(phoneNumber: $phoneNumber, isCorrect: $isCorrect)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SmsSenderState &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, isCorrect);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SmsSenderStateCopyWith<_$_SmsSenderState> get copyWith =>
      __$$_SmsSenderStateCopyWithImpl<_$_SmsSenderState>(this, _$identity);
}

abstract class _SmsSenderState implements SmsSenderState {
  const factory _SmsSenderState(
      {final String phoneNumber, final bool isCorrect}) = _$_SmsSenderState;

  @override
  String get phoneNumber;
  @override
  bool get isCorrect;
  @override
  @JsonKey(ignore: true)
  _$$_SmsSenderStateCopyWith<_$_SmsSenderState> get copyWith =>
      throw _privateConstructorUsedError;
}
