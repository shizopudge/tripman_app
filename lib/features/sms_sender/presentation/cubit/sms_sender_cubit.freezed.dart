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
  String? get smsVerificationCode => throw _privateConstructorUsedError;
  bool get isCorrect => throw _privateConstructorUsedError;
  bool get isFirstTime => throw _privateConstructorUsedError;
  SmsSenderStatus get status => throw _privateConstructorUsedError;
  Fault get fault => throw _privateConstructorUsedError;

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
  $Res call(
      {String phoneNumber,
      String? smsVerificationCode,
      bool isCorrect,
      bool isFirstTime,
      SmsSenderStatus status,
      Fault fault});

  $FaultCopyWith<$Res> get fault;
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
    Object? smsVerificationCode = freezed,
    Object? isCorrect = null,
    Object? isFirstTime = null,
    Object? status = null,
    Object? fault = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      smsVerificationCode: freezed == smsVerificationCode
          ? _value.smsVerificationCode
          : smsVerificationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      isFirstTime: null == isFirstTime
          ? _value.isFirstTime
          : isFirstTime // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SmsSenderStatus,
      fault: null == fault
          ? _value.fault
          : fault // ignore: cast_nullable_to_non_nullable
              as Fault,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FaultCopyWith<$Res> get fault {
    return $FaultCopyWith<$Res>(_value.fault, (value) {
      return _then(_value.copyWith(fault: value) as $Val);
    });
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
  $Res call(
      {String phoneNumber,
      String? smsVerificationCode,
      bool isCorrect,
      bool isFirstTime,
      SmsSenderStatus status,
      Fault fault});

  @override
  $FaultCopyWith<$Res> get fault;
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
    Object? smsVerificationCode = freezed,
    Object? isCorrect = null,
    Object? isFirstTime = null,
    Object? status = null,
    Object? fault = null,
  }) {
    return _then(_$_SmsSenderState(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      smsVerificationCode: freezed == smsVerificationCode
          ? _value.smsVerificationCode
          : smsVerificationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      isFirstTime: null == isFirstTime
          ? _value.isFirstTime
          : isFirstTime // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SmsSenderStatus,
      fault: null == fault
          ? _value.fault
          : fault // ignore: cast_nullable_to_non_nullable
              as Fault,
    ));
  }
}

/// @nodoc

class _$_SmsSenderState implements _SmsSenderState {
  const _$_SmsSenderState(
      {this.phoneNumber = '',
      this.smsVerificationCode = null,
      this.isCorrect = false,
      this.isFirstTime = true,
      this.status = SmsSenderStatus.input,
      this.fault = const Fault.unknown()});

  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final String? smsVerificationCode;
  @override
  @JsonKey()
  final bool isCorrect;
  @override
  @JsonKey()
  final bool isFirstTime;
  @override
  @JsonKey()
  final SmsSenderStatus status;
  @override
  @JsonKey()
  final Fault fault;

  @override
  String toString() {
    return 'SmsSenderState(phoneNumber: $phoneNumber, smsVerificationCode: $smsVerificationCode, isCorrect: $isCorrect, isFirstTime: $isFirstTime, status: $status, fault: $fault)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SmsSenderState &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.smsVerificationCode, smsVerificationCode) ||
                other.smsVerificationCode == smsVerificationCode) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect) &&
            (identical(other.isFirstTime, isFirstTime) ||
                other.isFirstTime == isFirstTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.fault, fault) || other.fault == fault));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, smsVerificationCode,
      isCorrect, isFirstTime, status, fault);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SmsSenderStateCopyWith<_$_SmsSenderState> get copyWith =>
      __$$_SmsSenderStateCopyWithImpl<_$_SmsSenderState>(this, _$identity);
}

abstract class _SmsSenderState implements SmsSenderState {
  const factory _SmsSenderState(
      {final String phoneNumber,
      final String? smsVerificationCode,
      final bool isCorrect,
      final bool isFirstTime,
      final SmsSenderStatus status,
      final Fault fault}) = _$_SmsSenderState;

  @override
  String get phoneNumber;
  @override
  String? get smsVerificationCode;
  @override
  bool get isCorrect;
  @override
  bool get isFirstTime;
  @override
  SmsSenderStatus get status;
  @override
  Fault get fault;
  @override
  @JsonKey(ignore: true)
  _$$_SmsSenderStateCopyWith<_$_SmsSenderState> get copyWith =>
      throw _privateConstructorUsedError;
}
