part of 'sms_sender_cubit.dart';

@freezed
class SmsSenderState with _$SmsSenderState {
  const factory SmsSenderState.loading({
    required String phoneNumber,
  }) = _Loading;
  const factory SmsSenderState.input({
    @Default('') String phoneNumber,
    @Default(false) bool isCorrect,
  }) = _Input;
  const factory SmsSenderState.success({
    required String smsVerificationCode,
    required String phoneNumber,
    required bool isFirstTime,
  }) = SmsSenderSuccess;
  const factory SmsSenderState.failure({
    required Fault fault,
    required String phoneNumber,
  }) = SmsSenderFailure;
}
