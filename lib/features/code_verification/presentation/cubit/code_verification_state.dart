part of 'code_verification_cubit.dart';

enum CodeVerificationStatus {
  input,
  confirmed,
  incorrect;

  bool get isInput => this == CodeVerificationStatus.input;
  bool get isConfirmed => this == CodeVerificationStatus.confirmed;
  bool get isIncorrect => this == CodeVerificationStatus.incorrect;
}

@freezed
class CodeVerificationState with _$CodeVerificationState {
  const factory CodeVerificationState({
    @Default('') String smsCode,
    @Default(CodeVerificationStatus.input) CodeVerificationStatus status,
    @Default(35) int secondsBeforeNextCode,
  }) = _CodeVerificationState;
}
