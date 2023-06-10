part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();
  const factory HomeState.loading({
    @Default(LocalConstants.defaultTripType) TripType tripType,
    @Default(null) DateInterval? dateInterval,
    @Default(false) bool isMenuOpened,
    @Default(false) bool isRefreshing,
    @Default([]) List<Trip> trips,
  }) = _Loading;
  const factory HomeState.success({
    required TripType tripType,
    required DateInterval? dateInterval,
    required bool isMenuOpened,
    required List<Trip> trips,
  }) = _Success;
  const factory HomeState.failure({
    required TripType tripType,
    required DateInterval? dateInterval,
    required bool isMenuOpened,
    required Failure failure,
    @Default([]) List<Trip> trips,
  }) = _Failure;

  factory HomeState.fromJson(Map<String, dynamic> json) =>
      _$HomeStateFromJson(json);

  @override
  String toString() =>
      'HomeState: $runtimeType, tripType: $tripType, dateInterval: $dateInterval, isMenuOpened: $isMenuOpened';
}
