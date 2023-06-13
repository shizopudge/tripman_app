part of 'sms_sender_cubit.dart';

enum SmsSenderStatus {
  input,
  loading,
  success,
  failure;

  bool get isInput => this == SmsSenderStatus.input;
  bool get isLoading => this == SmsSenderStatus.loading;
  bool get isSuccess => this == SmsSenderStatus.success;
  bool get isFailure => this == SmsSenderStatus.failure;
}

@freezed
class SmsSenderState with _$SmsSenderState {
  const factory SmsSenderState({
    @Default('') String phoneNumber,
    @Default(null) String? smsVerificationCode,
    @Default(false) bool isCorrect,
    @Default(true) bool isFirstTime,
    @Default(SmsSenderStatus.input) SmsSenderStatus status,
    @Default(Fault.unknown()) Fault fault,
  }) = _SmsSenderState;
}
