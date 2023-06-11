import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures/failures.dart';

part 'start_cubit.freezed.dart';
part 'start_state.dart';

class StartCubit extends Cubit<StartState> {
  StartCubit() : super(const StartState.initial());

  void init() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    emit(const StartState.loaded());
  }

  void emitFailure(Failure failure) => emit(
        StartState.failure(
          failure: failure,
        ),
      );

  void emitLoaded() => emit(
        const StartState.loaded(),
      );

  void emitLoading() => emit(
        const StartState.loading(),
      );

  void emitInitial() => emit(
        const StartState.initial(),
      );
}
