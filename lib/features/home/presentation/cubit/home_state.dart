part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();
  const factory HomeState.loading({
    @Default(AppConstantData.defaultTripType) TripType selectedTripType,
    @Default(null) DateInterval? selectedDateInterval,
    @Default(false) bool isMenuOpened,
    @Default(false) bool isRefreshing,
    @Default([]) List<Trip> trips,
  }) = _Loading;
  const factory HomeState.success({
    required TripType selectedTripType,
    required DateInterval? selectedDateInterval,
    required bool isMenuOpened,
    required List<Trip> trips,
  }) = _Success;
  const factory HomeState.failure({
    required TripType selectedTripType,
    required DateInterval? selectedDateInterval,
    required bool isMenuOpened,
    required Fault fault,
    @Default([]) List<Trip> trips,
  }) = _Failure;

  factory HomeState.fromJson(Map<String, dynamic> json) =>
      _$HomeStateFromJson(json);

  @override
  String toString() =>
      'HomeState: $runtimeType, tripType: $selectedTripType, dateInterval: $selectedDateInterval, isMenuOpened: $isMenuOpened';
}
