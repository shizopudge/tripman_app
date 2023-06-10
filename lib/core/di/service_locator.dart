import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../data/network/api/dio_client.dart';
import '../presentation/logic/internet/internet_cubit.dart';
import '../utils/app_router.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerSingleton(Dio());
  getIt.registerSingleton(DioClient(getIt<Dio>()));
  getIt.registerSingleton(Connectivity());
  getIt.registerSingleton(InternetCubit(connectivity: getIt<Connectivity>()));
  getIt.registerSingleton(AppRouter());
}
