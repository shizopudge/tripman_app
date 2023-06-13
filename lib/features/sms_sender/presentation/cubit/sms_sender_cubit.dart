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
        super(const SmsSenderState());

  void phoneChange({required String phoneNumber, required bool isCorrect}) =>
      emit(state.copyWith(
          phoneNumber: phoneNumber,
          isCorrect: isCorrect,
          status: SmsSenderStatus.input));

  void sendVerificationCode({bool isFirstTime = true}) async {
    emit(state.copyWith(status: SmsSenderStatus.loading));
    final result = await _sendSmsVerificationCode
        .call(SendSmsVerificationCodeParams(phoneNumber: state.phoneNumber));
    result.fold(
      (fault) => emit(
        state.copyWith(
          status: SmsSenderStatus.failure,
          fault: fault,
        ),
      ),
      (smsVerificationCode) => emit(state.copyWith(
        status: SmsSenderStatus.success,
        smsVerificationCode: smsVerificationCode,
        isFirstTime: isFirstTime,
      )),
    );
  }

  void refresh() => emit(const SmsSenderState());
}
