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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) loading,
    required TResult Function(String phoneNumber, bool isCorrect) input,
    required TResult Function(
            String smsVerificationCode, String phoneNumber, bool isFirstTime)
        success,
    required TResult Function(Fault fault, String phoneNumber) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? loading,
    TResult? Function(String phoneNumber, bool isCorrect)? input,
    TResult? Function(
            String smsVerificationCode, String phoneNumber, bool isFirstTime)?
        success,
    TResult? Function(Fault fault, String phoneNumber)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? loading,
    TResult Function(String phoneNumber, bool isCorrect)? input,
    TResult Function(
            String smsVerificationCode, String phoneNumber, bool isFirstTime)?
        success,
    TResult Function(Fault fault, String phoneNumber)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Input value) input,
    required TResult Function(SmsSenderSuccess value) success,
    required TResult Function(SmsSenderFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Input value)? input,
    TResult? Function(SmsSenderSuccess value)? success,
    TResult? Function(SmsSenderFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Input value)? input,
    TResult Function(SmsSenderSuccess value)? success,
    TResult Function(SmsSenderFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

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
  $Res call({String phoneNumber});
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
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $SmsSenderStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$SmsSenderStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$_Loading(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'SmsSenderState.loading(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) loading,
    required TResult Function(String phoneNumber, bool isCorrect) input,
    required TResult Function(
            String smsVerificationCode, String phoneNumber, bool isFirstTime)
        success,
    required TResult Function(Fault fault, String phoneNumber) failure,
  }) {
    return loading(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? loading,
    TResult? Function(String phoneNumber, bool isCorrect)? input,
    TResult? Function(
            String smsVerificationCode, String phoneNumber, bool isFirstTime)?
        success,
    TResult? Function(Fault fault, String phoneNumber)? failure,
  }) {
    return loading?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? loading,
    TResult Function(String phoneNumber, bool isCorrect)? input,
    TResult Function(
            String smsVerificationCode, String phoneNumber, bool isFirstTime)?
        success,
    TResult Function(Fault fault, String phoneNumber)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Input value) input,
    required TResult Function(SmsSenderSuccess value) success,
    required TResult Function(SmsSenderFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Input value)? input,
    TResult? Function(SmsSenderSuccess value)? success,
    TResult? Function(SmsSenderFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Input value)? input,
    TResult Function(SmsSenderSuccess value)? success,
    TResult Function(SmsSenderFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SmsSenderState {
  const factory _Loading({required final String phoneNumber}) = _$_Loading;

  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InputCopyWith<$Res>
    implements $SmsSenderStateCopyWith<$Res> {
  factory _$$_InputCopyWith(_$_Input value, $Res Function(_$_Input) then) =
      __$$_InputCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, bool isCorrect});
}

/// @nodoc
class __$$_InputCopyWithImpl<$Res>
    extends _$SmsSenderStateCopyWithImpl<$Res, _$_Input>
    implements _$$_InputCopyWith<$Res> {
  __$$_InputCopyWithImpl(_$_Input _value, $Res Function(_$_Input) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? isCorrect = null,
  }) {
    return _then(_$_Input(
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

class _$_Input implements _Input {
  const _$_Input({this.phoneNumber = '', this.isCorrect = false});

  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final bool isCorrect;

  @override
  String toString() {
    return 'SmsSenderState.input(phoneNumber: $phoneNumber, isCorrect: $isCorrect)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Input &&
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
  _$$_InputCopyWith<_$_Input> get copyWith =>
      __$$_InputCopyWithImpl<_$_Input>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) loading,
    required TResult Function(String phoneNumber, bool isCorrect) input,
    required TResult Function(
            String smsVerificationCode, String phoneNumber, bool isFirstTime)
        success,
    required TResult Function(Fault fault, String phoneNumber) failure,
  }) {
    return input(phoneNumber, isCorrect);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? loading,
    TResult? Function(String phoneNumber, bool isCorrect)? input,
    TResult? Function(
            String smsVerificationCode, String phoneNumber, bool isFirstTime)?
        success,
    TResult? Function(Fault fault, String phoneNumber)? failure,
  }) {
    return input?.call(phoneNumber, isCorrect);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? loading,
    TResult Function(String phoneNumber, bool isCorrect)? input,
    TResult Function(
            String smsVerificationCode, String phoneNumber, bool isFirstTime)?
        success,
    TResult Function(Fault fault, String phoneNumber)? failure,
    required TResult orElse(),
  }) {
    if (input != null) {
      return input(phoneNumber, isCorrect);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Input value) input,
    required TResult Function(SmsSenderSuccess value) success,
    required TResult Function(SmsSenderFailure value) failure,
  }) {
    return input(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Input value)? input,
    TResult? Function(SmsSenderSuccess value)? success,
    TResult? Function(SmsSenderFailure value)? failure,
  }) {
    return input?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Input value)? input,
    TResult Function(SmsSenderSuccess value)? success,
    TResult Function(SmsSenderFailure value)? failure,
    required TResult orElse(),
  }) {
    if (input != null) {
      return input(this);
    }
    return orElse();
  }
}

abstract class _Input implements SmsSenderState {
  const factory _Input({final String phoneNumber, final bool isCorrect}) =
      _$_Input;

  @override
  String get phoneNumber;
  bool get isCorrect;
  @override
  @JsonKey(ignore: true)
  _$$_InputCopyWith<_$_Input> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SmsSenderSuccessCopyWith<$Res>
    implements $SmsSenderStateCopyWith<$Res> {
  factory _$$SmsSenderSuccessCopyWith(
          _$SmsSenderSuccess value, $Res Function(_$SmsSenderSuccess) then) =
      __$$SmsSenderSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String smsVerificationCode, String phoneNumber, bool isFirstTime});
}

/// @nodoc
class __$$SmsSenderSuccessCopyWithImpl<$Res>
    extends _$SmsSenderStateCopyWithImpl<$Res, _$SmsSenderSuccess>
    implements _$$SmsSenderSuccessCopyWith<$Res> {
  __$$SmsSenderSuccessCopyWithImpl(
      _$SmsSenderSuccess _value, $Res Function(_$SmsSenderSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smsVerificationCode = null,
    Object? phoneNumber = null,
    Object? isFirstTime = null,
  }) {
    return _then(_$SmsSenderSuccess(
      smsVerificationCode: null == smsVerificationCode
          ? _value.smsVerificationCode
          : smsVerificationCode // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isFirstTime: null == isFirstTime
          ? _value.isFirstTime
          : isFirstTime // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SmsSenderSuccess implements SmsSenderSuccess {
  const _$SmsSenderSuccess(
      {required this.smsVerificationCode,
      required this.phoneNumber,
      required this.isFirstTime});

  @override
  final String smsVerificationCode;
  @override
  final String phoneNumber;
  @override
  final bool isFirstTime;

  @override
  String toString() {
    return 'SmsSenderState.success(smsVerificationCode: $smsVerificationCode, phoneNumber: $phoneNumber, isFirstTime: $isFirstTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SmsSenderSuccess &&
            (identical(other.smsVerificationCode, smsVerificationCode) ||
                other.smsVerificationCode == smsVerificationCode) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.isFirstTime, isFirstTime) ||
                other.isFirstTime == isFirstTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, smsVerificationCode, phoneNumber, isFirstTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SmsSenderSuccessCopyWith<_$SmsSenderSuccess> get copyWith =>
      __$$SmsSenderSuccessCopyWithImpl<_$SmsSenderSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) loading,
    required TResult Function(String phoneNumber, bool isCorrect) input,
    required TResult Function(
            String smsVerificationCode, String phoneNumber, bool isFirstTime)
        success,
    required TResult Function(Fault fault, String phoneNumber) failure,
  }) {
    return success(smsVerificationCode, phoneNumber, isFirstTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? loading,
    TResult? Function(String phoneNumber, bool isCorrect)? input,
    TResult? Function(
            String smsVerificationCode, String phoneNumber, bool isFirstTime)?
        success,
    TResult? Function(Fault fault, String phoneNumber)? failure,
  }) {
    return success?.call(smsVerificationCode, phoneNumber, isFirstTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? loading,
    TResult Function(String phoneNumber, bool isCorrect)? input,
    TResult Function(
            String smsVerificationCode, String phoneNumber, bool isFirstTime)?
        success,
    TResult Function(Fault fault, String phoneNumber)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(smsVerificationCode, phoneNumber, isFirstTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Input value) input,
    required TResult Function(SmsSenderSuccess value) success,
    required TResult Function(SmsSenderFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Input value)? input,
    TResult? Function(SmsSenderSuccess value)? success,
    TResult? Function(SmsSenderFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Input value)? input,
    TResult Function(SmsSenderSuccess value)? success,
    TResult Function(SmsSenderFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SmsSenderSuccess implements SmsSenderState {
  const factory SmsSenderSuccess(
      {required final String smsVerificationCode,
      required final String phoneNumber,
      required final bool isFirstTime}) = _$SmsSenderSuccess;

  String get smsVerificationCode;
  @override
  String get phoneNumber;
  bool get isFirstTime;
  @override
  @JsonKey(ignore: true)
  _$$SmsSenderSuccessCopyWith<_$SmsSenderSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SmsSenderFailureCopyWith<$Res>
    implements $SmsSenderStateCopyWith<$Res> {
  factory _$$SmsSenderFailureCopyWith(
          _$SmsSenderFailure value, $Res Function(_$SmsSenderFailure) then) =
      __$$SmsSenderFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fault fault, String phoneNumber});

  $FaultCopyWith<$Res> get fault;
}

/// @nodoc
class __$$SmsSenderFailureCopyWithImpl<$Res>
    extends _$SmsSenderStateCopyWithImpl<$Res, _$SmsSenderFailure>
    implements _$$SmsSenderFailureCopyWith<$Res> {
  __$$SmsSenderFailureCopyWithImpl(
      _$SmsSenderFailure _value, $Res Function(_$SmsSenderFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fault = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$SmsSenderFailure(
      fault: null == fault
          ? _value.fault
          : fault // ignore: cast_nullable_to_non_nullable
              as Fault,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FaultCopyWith<$Res> get fault {
    return $FaultCopyWith<$Res>(_value.fault, (value) {
      return _then(_value.copyWith(fault: value));
    });
  }
}

/// @nodoc

class _$SmsSenderFailure implements SmsSenderFailure {
  const _$SmsSenderFailure({required this.fault, required this.phoneNumber});

  @override
  final Fault fault;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'SmsSenderState.failure(fault: $fault, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SmsSenderFailure &&
            (identical(other.fault, fault) || other.fault == fault) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fault, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SmsSenderFailureCopyWith<_$SmsSenderFailure> get copyWith =>
      __$$SmsSenderFailureCopyWithImpl<_$SmsSenderFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) loading,
    required TResult Function(String phoneNumber, bool isCorrect) input,
    required TResult Function(
            String smsVerificationCode, String phoneNumber, bool isFirstTime)
        success,
    required TResult Function(Fault fault, String phoneNumber) failure,
  }) {
    return failure(fault, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? loading,
    TResult? Function(String phoneNumber, bool isCorrect)? input,
    TResult? Function(
            String smsVerificationCode, String phoneNumber, bool isFirstTime)?
        success,
    TResult? Function(Fault fault, String phoneNumber)? failure,
  }) {
    return failure?.call(fault, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? loading,
    TResult Function(String phoneNumber, bool isCorrect)? input,
    TResult Function(
            String smsVerificationCode, String phoneNumber, bool isFirstTime)?
        success,
    TResult Function(Fault fault, String phoneNumber)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(fault, phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Input value) input,
    required TResult Function(SmsSenderSuccess value) success,
    required TResult Function(SmsSenderFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Input value)? input,
    TResult? Function(SmsSenderSuccess value)? success,
    TResult? Function(SmsSenderFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Input value)? input,
    TResult Function(SmsSenderSuccess value)? success,
    TResult Function(SmsSenderFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class SmsSenderFailure implements SmsSenderState {
  const factory SmsSenderFailure(
      {required final Fault fault,
      required final String phoneNumber}) = _$SmsSenderFailure;

  Fault get fault;
  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$SmsSenderFailureCopyWith<_$SmsSenderFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
