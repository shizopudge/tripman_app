part of 'sms_sender_cubit.dart';

//??? error states and loading states

@freezed
class SmsSenderState with _$SmsSenderState {
  const factory SmsSenderState({
    @Default('') String phoneNumber,
    @Default(false) bool isCorrect,
  }) = _SmsSenderState;
}
