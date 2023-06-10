import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tripman/core/di/service_locator.dart';
import 'package:tripman/features/home/presentation/cubit/home_cubit.dart';
import 'package:tripman/features/start_page.dart';

import '../../features/home/data/datasources/trip_remote_data_source.dart';
import '../../features/home/data/repositories/trip_repository_impl.dart';
import '../../features/home/domain/usecases/fetch_trips.dart';
import '../../features/home/presentation/home_screen.dart';
import '../data/network/api/dio_client.dart';
import '../presentation/logic/internet/internet_cubit.dart';

class AppRouter {
  final _homeCubit = HomeCubit(
      fetchTrips: FetchTrips(TripRepositoryImpl(
          remoteDataSource:
              TripRemoteDataSourceImpl(dioClient: getIt<DioClient>()))),
      internetCubit: getIt<InternetCubit>());

  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const StartPage(),
        );
      case '/home':
        return MaterialPageRoute(
          builder: (_) => BlocProvider<HomeCubit>(
            create: (_) => _homeCubit..loadTrips(),
            child: const HomeScreen(),
          ),
        );
      default:
        return null;
    }
  }
}
