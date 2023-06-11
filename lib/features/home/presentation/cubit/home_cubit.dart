import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../../../core/data/local/constants.dart';
import '../../../../core/domain/entities/date_interval/date_interval.dart';
import '../../../../core/domain/entities/trip/trip.dart';
import '../../../../core/domain/entities/trip_type/trip_type.dart';
import '../../../../core/error/failures/failures.dart';
import '../../../../core/logic/internet/internet_cubit.dart';
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

  void loadTrips() async {
    if (_isConnected == true) {
      emit(HomeState.loading(
        dateInterval: state.dateInterval,
        isMenuOpened: state.isMenuOpened,
        tripType: state.tripType,
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
          dateInterval: state.dateInterval,
          isMenuOpened: state.isMenuOpened,
          tripType: state.tripType,
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
      emit(state.copyWith(tripType: tripType));

  void setDateInterval({required DateInterval? dateInterval}) =>
      emit(state.copyWith(dateInterval: dateInterval));

  void _fetchrips() async {
    final failureOrTrips = await _fetchTrips.call(Params(
      type: state.tripType.title,
      dateInterval: state.dateInterval,
    ));
    failureOrTrips.fold(
      (failure) => emit(
        HomeState.failure(
          failure: failure,
          dateInterval: state.dateInterval,
          isMenuOpened: state.isMenuOpened,
          tripType: state.tripType,
        ),
      ),
      (trips) => emit(
        HomeState.success(
          trips: trips,
          dateInterval: state.dateInterval,
          isMenuOpened: state.isMenuOpened,
          tripType: state.tripType,
        ),
      ),
    );
  }

  @override
  HomeState? fromJson(Map<String, dynamic> json) {
    if (_isConnected == false) {
      return HomeState.fromJson(json);
    }
    return null;
  }

  @override
  Map<String, dynamic>? toJson(HomeState state) {
    if (_isConnected == true && state is! _Loading && state is! _Failure) {
      return state.toJson();
    }
    return null;
  }

  @override
  Future<void> close() {
    _internetStreamSubscription.cancel();
    return super.close();
  }
}
