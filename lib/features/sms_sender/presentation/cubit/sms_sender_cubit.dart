import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/usecases/send_verification_code.dart';

part 'sms_sender_cubit.freezed.dart';
part 'sms_sender_state.dart';

class SmsSenderCubit extends Cubit<SmsSenderState> {
  final SendSmsVerificationCode _sendSmsVerificationCode;
  SmsSenderCubit({required SendSmsVerificationCode sendSmsVerificationCode})
      : _sendSmsVerificationCode = sendSmsVerificationCode,
        super(const SmsSenderState());

  void phoneChange({required String phoneNumber, required bool isValidated}) {
    emit(SmsSenderState(phoneNumber: phoneNumber, isCorrect: isValidated));
  }

  void clearPhone() => emit(const SmsSenderState());

  void sendVerificationCode() async {
    final result = await _sendSmsVerificationCode
        .call(Params(phoneNumber: state.phoneNumber));
    result.fold(
        (failure) => emit(
              const SmsSenderState(),
            ),
        (r) => null);
  }
}
