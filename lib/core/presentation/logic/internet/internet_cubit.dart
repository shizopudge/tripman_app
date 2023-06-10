import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'internet_cubit.freezed.dart';
part 'internet_state.dart';

class InternetCubit extends Cubit<InternetState> {
  final Connectivity connectivity;
  late final StreamSubscription connectivityStreamSubscription;
  InternetCubit({
    required this.connectivity,
  }) : super(const InternetState.loading()) {
    _monitorInternetConnection();
  }

  void _monitorInternetConnection() {
    connectivityStreamSubscription =
        connectivity.onConnectivityChanged.listen((connectivityResult) {
      if (connectivityResult == ConnectivityResult.none) {
        _emitInternedDisconnected();
      } else {
        _emitInternedConnected();
      }
    });
  }

  void checkInternetConnection() async {
    final ConnectivityResult connectivityResult =
        await connectivity.checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      _emitInternedDisconnected();
    } else {
      _emitInternedConnected();
    }
  }

  void _emitInternedConnected() => emit(const InternetState.connected());

  void _emitInternedDisconnected() => emit(const InternetState.disconnected());

  @override
  Future<void> close() {
    connectivityStreamSubscription.cancel();
    return super.close();
  }
}
