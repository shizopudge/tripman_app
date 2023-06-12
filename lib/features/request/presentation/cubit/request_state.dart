part of 'request_cubit.dart';

enum RequestStatus {
  input,
  loading,
  success,
  failure;

  bool get isInput => this == RequestStatus.input;
  bool get isLoading => this == RequestStatus.loading;
  bool get isSuccess => this == RequestStatus.success;
  bool get isFailure => this == RequestStatus.failure;
}

@freezed
class RequestState with _$RequestState {
  const factory RequestState({
    @Default('') String phoneNumber,
    @Default('') String comment,
    @Default(false) bool isPhoneNumberCorrect,
    @Default(RequestStatus.input) RequestStatus status,
    @Default(UnknownFault()) Fault fault,
  }) = _RequestState;
}
