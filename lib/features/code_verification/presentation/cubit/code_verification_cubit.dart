import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../sms_sender/presentation/cubit/sms_sender_cubit.dart';

part 'code_verification_state.dart';
part 'code_verification_cubit.freezed.dart';

class CodeVerificationCubit extends Cubit<CodeVerificationState> {
  final SmsSenderCubit _smsSenderCubit;
  CodeVerificationCubit({required SmsSenderCubit smsSenderCubit})
      : _smsSenderCubit = smsSenderCubit,
        super(const CodeVerificationState());

  Timer? _timer;

  void init() =>
      _timer = Timer.periodic(const Duration(milliseconds: 1000), _onTick);

  void restartTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(milliseconds: 1000), _onTick);
    _smsSenderCubit.sendVerificationCode();
    emit(state.copyWith(secondsBeforeNextCode: 35));
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
    return super.close();
  }
}
