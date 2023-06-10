part of 'internet_cubit.dart';

@freezed
class InternetState with _$InternetState {
  const factory InternetState.loading() = _Loading;
  const factory InternetState.connected() = _Connected;
  const factory InternetState.disconnected() = _Disconnected;
}
