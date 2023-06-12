import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../sms_sender/presentation/cubit/sms_sender_cubit.dart';

part 'code_verification_cubit.freezed.dart';
part 'code_verification_state.dart';

class CodeVerificationCubit extends Cubit<CodeVerificationState> {
  final SmsSenderCubit _smsSenderCubit;
  late final StreamSubscription _smsSenderCubitStreamSubscription;
  CodeVerificationCubit({required SmsSenderCubit smsSenderCubit})
      : _smsSenderCubit = smsSenderCubit,
        super(const CodeVerificationState()) {
    monitorSmsVerificationCode();
  }

  Timer? _timer;
  String? verificationCode;

  void monitorSmsVerificationCode() => _smsSenderCubitStreamSubscription =
          _smsSenderCubit.stream.listen((smsSenderState) {
        if (smsSenderState is SmsSenderSuccess) {
          verificationCode = smsSenderState.smsVerificationCode;
        }
      });

  void init() {
    _timer = Timer.periodic(const Duration(milliseconds: 1000), _onTick);
    final smsSenderState = _smsSenderCubit.state;
    if (smsSenderState is SmsSenderSuccess) {
      verificationCode = smsSenderState.smsVerificationCode;
    }
  }

  void sendVerificationCodeAgain() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(milliseconds: 1000), _onTick);
    _smsSenderCubit.sendVerificationCode(isFirstTime: false);
    emit(state.copyWith(secondsBeforeNextCode: 35));
  }

  void smsCodeChange(String smsCode) {
    if (smsCode.length == 4) {
      if (smsCode == verificationCode) {
        emit(state.copyWith(
            smsCode: smsCode, isConfirmed: true, isIncorrect: false));
      } else {
        emit(state.copyWith(
            smsCode: smsCode, isConfirmed: false, isIncorrect: true));
      }
    } else {
      emit(state.copyWith(
          smsCode: smsCode, isConfirmed: false, isIncorrect: false));
    }
  }

  void _onTick(Timer timer) {
    if (state.secondsBeforeNextCode > 0) {
      emit(state.copyWith(
          secondsBeforeNextCode: state.secondsBeforeNextCode - 1));
    } else {
      _timer?.cancel();
    }
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    _smsSenderCubitStreamSubscription.cancel();
    return super.close();
  }
}
