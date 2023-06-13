import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures/fault.dart';
import '../../domain/usecases/send_request.dart';

part 'request_cubit.freezed.dart';
part 'request_state.dart';

class RequestCubit extends Cubit<RequestState> {
  final SendRequest _sendRequest;
  RequestCubit({required SendRequest sendRequest})
      : _sendRequest = sendRequest,
        super(const RequestState());

  void phoneChange(
          {required String phoneNumber, required bool isPhoneNumberCorrect}) =>
      emit(state.copyWith(
          phoneNumber: phoneNumber,
          isPhoneNumberCorrect: isPhoneNumberCorrect));

  void commentChange(String comment) => emit(state.copyWith(comment: comment));

  void refresh() => emit(const RequestState());

  void sendRequest() async {
    emit(state.copyWith(status: RequestStatus.loading));
    final result = await _sendRequest.call(SendRequestParams(
        phoneNumber: state.phoneNumber, comment: state.comment));
    result.fold(
        (fault) =>
            emit(state.copyWith(status: RequestStatus.failure, fault: fault)),
        (r) => emit(state.copyWith(status: RequestStatus.success)));
  }
}
