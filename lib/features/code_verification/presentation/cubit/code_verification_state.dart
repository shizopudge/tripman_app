part of 'code_verification_cubit.dart';

@freezed
class CodeVerificationState with _$CodeVerificationState {
  const factory CodeVerificationState({
    @Default('') String smsCode,
    @Default(false) bool isConfirmed,
    @Default(false) bool isIncorrect,
    @Default(35) int secondsBeforeNextCode,
  }) = _CodeVerificationState;
}
