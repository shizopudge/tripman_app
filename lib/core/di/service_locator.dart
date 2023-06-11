import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/code_verification/presentation/cubit/code_verification_cubit.dart';
import '../../features/home/data/datasources/trip_remote_data_source.dart';
import '../../features/home/data/repositories/trip_repository_impl.dart';
import '../../features/home/domain/usecases/fetch_trips.dart';
import '../../features/home/presentation/cubit/home_cubit.dart';
import '../../features/sms_sender/data/datasources/sms_sender_remote_data_source.dart';
import '../../features/sms_sender/data/repositories/sms_sender_repository_impl.dart';
import '../../features/sms_sender/domain/usecases/send_verification_code.dart';
import '../../features/sms_sender/presentation/cubit/sms_sender_cubit.dart';
import '../../features/start/presentation/cubit/start_cubit.dart';
import '../data/network/api/dio_client.dart';
import '../logic/internet/internet_cubit.dart';
import '../utils/app_router.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  // Other
  getIt.registerSingleton(Dio());
  getIt.registerSingleton(DioClient(getIt<Dio>()));
  getIt.registerSingleton(Connectivity());

  //DataSources
  getIt.registerSingleton(
    HomeRemoteDataSourceImpl(
      getIt<DioClient>(),
    ),
  );
  getIt.registerSingleton(SmsSenderRemoteDataSourceImpl(getIt<DioClient>()));

  // Repositories
  getIt.registerSingleton(
    HomeRepositoryImpl(
      remoteDataSource: getIt<HomeRemoteDataSourceImpl>(),
    ),
  );
  getIt.registerSingleton(SmsSenderRepositoryImpl(
      remoteDataSource: getIt<SmsSenderRemoteDataSourceImpl>()));

  // UseCases
  getIt.registerSingleton(FetchTrips(getIt<HomeRepositoryImpl>()));
  getIt.registerSingleton(
      SendSmsVerificationCode(getIt<SmsSenderRepositoryImpl>()));

  // Cubits/Bloc
  getIt.registerSingleton(InternetCubit(connectivity: getIt<Connectivity>()));
  getIt.registerSingleton(StartCubit());
  getIt.registerSingleton(SmsSenderCubit(
      sendSmsVerificationCode: getIt<SendSmsVerificationCode>()));
  getIt.registerSingleton(
      CodeVerificationCubit(smsSenderCubit: getIt<SmsSenderCubit>()));
  getIt.registerSingleton(HomeCubit(
      fetchTrips: getIt<FetchTrips>(), internetCubit: getIt<InternetCubit>()));

  // Router
  getIt.registerSingleton(AppRouter());
}
