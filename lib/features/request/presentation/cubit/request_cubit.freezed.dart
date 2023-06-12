// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RequestState {
  String get phoneNumber => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  bool get isPhoneNumberCorrect => throw _privateConstructorUsedError;
  RequestStatus get status => throw _privateConstructorUsedError;
  Fault get fault => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RequestStateCopyWith<RequestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestStateCopyWith<$Res> {
  factory $RequestStateCopyWith(
          RequestState value, $Res Function(RequestState) then) =
      _$RequestStateCopyWithImpl<$Res, RequestState>;
  @useResult
  $Res call(
      {String phoneNumber,
      String comment,
      bool isPhoneNumberCorrect,
      RequestStatus status,
      Fault fault});

  $FaultCopyWith<$Res> get fault;
}

/// @nodoc
class _$RequestStateCopyWithImpl<$Res, $Val extends RequestState>
    implements $RequestStateCopyWith<$Res> {
  _$RequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? comment = null,
    Object? isPhoneNumberCorrect = null,
    Object? status = null,
    Object? fault = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      isPhoneNumberCorrect: null == isPhoneNumberCorrect
          ? _value.isPhoneNumberCorrect
          : isPhoneNumberCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
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
abstract class _$$_RequestStateCopyWith<$Res>
    implements $RequestStateCopyWith<$Res> {
  factory _$$_RequestStateCopyWith(
          _$_RequestState value, $Res Function(_$_RequestState) then) =
      __$$_RequestStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String phoneNumber,
      String comment,
      bool isPhoneNumberCorrect,
      RequestStatus status,
      Fault fault});

  @override
  $FaultCopyWith<$Res> get fault;
}

/// @nodoc
class __$$_RequestStateCopyWithImpl<$Res>
    extends _$RequestStateCopyWithImpl<$Res, _$_RequestState>
    implements _$$_RequestStateCopyWith<$Res> {
  __$$_RequestStateCopyWithImpl(
      _$_RequestState _value, $Res Function(_$_RequestState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? comment = null,
    Object? isPhoneNumberCorrect = null,
    Object? status = null,
    Object? fault = null,
  }) {
    return _then(_$_RequestState(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      isPhoneNumberCorrect: null == isPhoneNumberCorrect
          ? _value.isPhoneNumberCorrect
          : isPhoneNumberCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      fault: null == fault
          ? _value.fault
          : fault // ignore: cast_nullable_to_non_nullable
              as Fault,
    ));
  }
}

/// @nodoc

class _$_RequestState implements _RequestState {
  const _$_RequestState(
      {this.phoneNumber = '',
      this.comment = '',
      this.isPhoneNumberCorrect = false,
      this.status = RequestStatus.input,
      this.fault = const UnknownFault()});

  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final String comment;
  @override
  @JsonKey()
  final bool isPhoneNumberCorrect;
  @override
  @JsonKey()
  final RequestStatus status;
  @override
  @JsonKey()
  final Fault fault;

  @override
  String toString() {
    return 'RequestState(phoneNumber: $phoneNumber, comment: $comment, isPhoneNumberCorrect: $isPhoneNumberCorrect, status: $status, fault: $fault)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestState &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.isPhoneNumberCorrect, isPhoneNumberCorrect) ||
                other.isPhoneNumberCorrect == isPhoneNumberCorrect) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.fault, fault) || other.fault == fault));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, phoneNumber, comment, isPhoneNumberCorrect, status, fault);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestStateCopyWith<_$_RequestState> get copyWith =>
      __$$_RequestStateCopyWithImpl<_$_RequestState>(this, _$identity);
}

abstract class _RequestState implements RequestState {
  const factory _RequestState(
      {final String phoneNumber,
      final String comment,
      final bool isPhoneNumberCorrect,
      final RequestStatus status,
      final Fault fault}) = _$_RequestState;

  @override
  String get phoneNumber;
  @override
  String get comment;
  @override
  bool get isPhoneNumberCorrect;
  @override
  RequestStatus get status;
  @override
  Fault get fault;
  @override
  @JsonKey(ignore: true)
  _$$_RequestStateCopyWith<_$_RequestState> get copyWith =>
      throw _privateConstructorUsedError;
}
