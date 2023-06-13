import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../../../core/constants/app_constant_data.dart';
import '../../../../core/data/local/internet/internet_cubit.dart';
import '../../../../core/domain/entities/date_interval/date_interval.dart';
import '../../../../core/domain/entities/trip/trip.dart';
import '../../../../core/domain/entities/trip_type/trip_type.dart';
import '../../../../core/error/failures/fault.dart';
import '../../domain/usecases/fetch_trips.dart';

part 'home_cubit.freezed.dart';
part 'home_cubit.g.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> with HydratedMixin {
  final FetchTrips _fetchTrips;
  final InternetCubit _internetCubit;
  late final StreamSubscription _internetStreamSubscription;
  HomeCubit({
    required FetchTrips fetchTrips,
    required InternetCubit internetCubit,
  })  : _fetchTrips = fetchTrips,
        _internetCubit = internetCubit,
        super(const HomeState.loading()) {
    monitorInternetCubit();
  }

  bool? _isConnected;

  void monitorInternetCubit() {
    _internetStreamSubscription = _internetCubit.stream.listen((internetState) {
      internetState.whenOrNull(
        connected: () {
          _isConnected = true;
        },
        disconnected: () {
          _isConnected = false;
        },
      );
    });
  }

  void init() async {
    final connectivityResult =
        await _internetCubit.connectivity.checkConnectivity();
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      _isConnected = true;
    } else {
      _isConnected = false;
    }
    loadTrips();
  }

  void loadTrips() async {
    if (_isConnected == true) {
      emit(HomeState.loading(
        selectedDateInterval: state.selectedDateInterval,
        isMenuOpened: state.isMenuOpened,
        selectedTripType: state.selectedTripType,
      ));
      _fetchrips();
    }
  }

  void refreshTrips({required List<Trip> trips}) async {
    if (_isConnected == true) {
      emit(
        HomeState.loading(
          trips: trips,
          isRefreshing: true,
          selectedDateInterval: state.selectedDateInterval,
          isMenuOpened: state.isMenuOpened,
          selectedTripType: state.selectedTripType,
        ),
      );
      _fetchrips();
    }
  }

  void setIsMenuOpened() {
    if (state.isMenuOpened) {
      emit(state.copyWith(isMenuOpened: false));
    } else {
      emit(state.copyWith(isMenuOpened: true));
    }
  }

  void setTripType({required TripType tripType}) =>
      emit(state.copyWith(selectedTripType: tripType));

  void setDateInterval({required DateInterval? dateInterval}) =>
      emit(state.copyWith(selectedDateInterval: dateInterval));

  void _fetchrips() async {
    final failureOrTrips = await _fetchTrips.call(FetchTripsParams(
      type: state.selectedTripType.title,
      dateInterval: state.selectedDateInterval,
    ));
    failureOrTrips.fold(
      (fault) => emit(
        HomeState.failure(
          fault: fault,
          selectedDateInterval: state.selectedDateInterval,
          isMenuOpened: state.isMenuOpened,
          selectedTripType: state.selectedTripType,
        ),
      ),
      (trips) => emit(
        HomeState.success(
          trips: trips,
          selectedDateInterval: state.selectedDateInterval,
          isMenuOpened: state.isMenuOpened,
          selectedTripType: state.selectedTripType,
        ),
      ),
    );
  }

  @override
  HomeState? fromJson(Map<String, dynamic> json) => HomeState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(HomeState state) {
    if (_isConnected == true && state is! _Loading && state is! Failure) {
      return state.copyWith(isMenuOpened: false).toJson();
    }
    return null;
  }

  @override
  Future<void> close() {
    _internetStreamSubscription.cancel();
    return super.close();
  }
}
