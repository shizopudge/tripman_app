// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'code_verification_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CodeVerificationState {
  String get smsCode => throw _privateConstructorUsedError;
  CodeVerificationStatus get status => throw _privateConstructorUsedError;
  int get secondsBeforeNextCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CodeVerificationStateCopyWith<CodeVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeVerificationStateCopyWith<$Res> {
  factory $CodeVerificationStateCopyWith(CodeVerificationState value,
          $Res Function(CodeVerificationState) then) =
      _$CodeVerificationStateCopyWithImpl<$Res, CodeVerificationState>;
  @useResult
  $Res call(
      {String smsCode,
      CodeVerificationStatus status,
      int secondsBeforeNextCode});
}

/// @nodoc
class _$CodeVerificationStateCopyWithImpl<$Res,
        $Val extends CodeVerificationState>
    implements $CodeVerificationStateCopyWith<$Res> {
  _$CodeVerificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smsCode = null,
    Object? status = null,
    Object? secondsBeforeNextCode = null,
  }) {
    return _then(_value.copyWith(
      smsCode: null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CodeVerificationStatus,
      secondsBeforeNextCode: null == secondsBeforeNextCode
          ? _value.secondsBeforeNextCode
          : secondsBeforeNextCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CodeVerificationStateCopyWith<$Res>
    implements $CodeVerificationStateCopyWith<$Res> {
  factory _$$_CodeVerificationStateCopyWith(_$_CodeVerificationState value,
          $Res Function(_$_CodeVerificationState) then) =
      __$$_CodeVerificationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String smsCode,
      CodeVerificationStatus status,
      int secondsBeforeNextCode});
}

/// @nodoc
class __$$_CodeVerificationStateCopyWithImpl<$Res>
    extends _$CodeVerificationStateCopyWithImpl<$Res, _$_CodeVerificationState>
    implements _$$_CodeVerificationStateCopyWith<$Res> {
  __$$_CodeVerificationStateCopyWithImpl(_$_CodeVerificationState _value,
      $Res Function(_$_CodeVerificationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smsCode = null,
    Object? status = null,
    Object? secondsBeforeNextCode = null,
  }) {
    return _then(_$_CodeVerificationState(
      smsCode: null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CodeVerificationStatus,
      secondsBeforeNextCode: null == secondsBeforeNextCode
          ? _value.secondsBeforeNextCode
          : secondsBeforeNextCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CodeVerificationState implements _CodeVerificationState {
  const _$_CodeVerificationState(
      {this.smsCode = '',
      this.status = CodeVerificationStatus.input,
      this.secondsBeforeNextCode = 35});

  @override
  @JsonKey()
  final String smsCode;
  @override
  @JsonKey()
  final CodeVerificationStatus status;
  @override
  @JsonKey()
  final int secondsBeforeNextCode;

  @override
  String toString() {
    return 'CodeVerificationState(smsCode: $smsCode, status: $status, secondsBeforeNextCode: $secondsBeforeNextCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CodeVerificationState &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.secondsBeforeNextCode, secondsBeforeNextCode) ||
                other.secondsBeforeNextCode == secondsBeforeNextCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, smsCode, status, secondsBeforeNextCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CodeVerificationStateCopyWith<_$_CodeVerificationState> get copyWith =>
      __$$_CodeVerificationStateCopyWithImpl<_$_CodeVerificationState>(
          this, _$identity);
}

abstract class _CodeVerificationState implements CodeVerificationState {
  const factory _CodeVerificationState(
      {final String smsCode,
      final CodeVerificationStatus status,
      final int secondsBeforeNextCode}) = _$_CodeVerificationState;

  @override
  String get smsCode;
  @override
  CodeVerificationStatus get status;
  @override
  int get secondsBeforeNextCode;
  @override
  @JsonKey(ignore: true)
  _$$_CodeVerificationStateCopyWith<_$_CodeVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}
