part of 'request_cubit.dart';

enum RequestStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInput => this == RequestStatus.initial;
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
    @Default(RequestStatus.initial) RequestStatus status,
    @Default(UnknownFault()) Fault fault,
  }) = _RequestState;
}
