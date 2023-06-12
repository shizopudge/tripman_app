import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures/fault.dart';
import '../../domain/usecases/send_verification_code.dart';

part 'sms_sender_cubit.freezed.dart';
part 'sms_sender_state.dart';

class SmsSenderCubit extends Cubit<SmsSenderState> {
  final SendSmsVerificationCode _sendSmsVerificationCode;
  SmsSenderCubit({required SendSmsVerificationCode sendSmsVerificationCode})
      : _sendSmsVerificationCode = sendSmsVerificationCode,
        super(const SmsSenderState.input());

  void phoneChange({required String phoneNumber, required bool isCorrect}) =>
      emit(
          SmsSenderState.input(phoneNumber: phoneNumber, isCorrect: isCorrect));

  void sendVerificationCode({bool isFirstTime = true}) async {
    final String phoneNumber = state.phoneNumber;
    emit(SmsSenderState.loading(phoneNumber: phoneNumber));
    final result = await _sendSmsVerificationCode
        .call(SendSmsVerificationCodeParams(phoneNumber: phoneNumber));
    result.fold(
      (fault) => emit(
        SmsSenderState.failure(fault: fault, phoneNumber: phoneNumber),
      ),
      (smsVerificationCode) => emit(SmsSenderState.success(
        smsVerificationCode: smsVerificationCode,
        phoneNumber: phoneNumber,
        isFirstTime: isFirstTime,
      )),
    );
  }

  void refresh() => emit(const SmsSenderState.input());
}
