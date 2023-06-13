import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/auth/data/datasources/auth_remote_data_source.dart';
import '../../features/auth/data/repositories/auth_repository_impl.dart';
import '../../features/auth/domain/usecases/login_by_apple.dart';
import '../../features/auth/domain/usecases/login_by_google.dart';
import '../../features/auth/domain/usecases/login_by_phone.dart';
import '../../features/auth/presentation/cubit/auth_cubit.dart';
import '../../features/home/data/datasources/home_remote_data_source.dart';
import '../../features/home/data/repositories/home_repository_impl.dart';
import '../../features/home/domain/usecases/fetch_trips.dart';
import '../../features/request/data/datasources/request_remote_data_source.dart';
import '../../features/request/data/repositories/request_repository_impl.dart';
import '../../features/request/domain/usecases/send_request.dart';
import '../../features/sms_sender/data/datasources/sms_sender_remote_data_source.dart';
import '../../features/sms_sender/data/repositories/sms_sender_repository_impl.dart';
import '../../features/sms_sender/domain/usecases/send_verification_code.dart';
import '../data/local/internet/internet_cubit.dart';
import '../data/network/api/dio_client.dart';
import '../utils/app_router.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  // Other
  getIt.registerSingleton(Dio());
  getIt.registerSingleton(DioClient(getIt<Dio>()));
  getIt.registerSingleton(Connectivity());

  //DataSources
  getIt.registerSingleton(HomeRemoteDataSourceImpl(getIt<DioClient>()));
  getIt.registerSingleton(SmsSenderRemoteDataSourceImpl(getIt<DioClient>()));
  getIt.registerSingleton(AuthRemoteDataSourceImpl(getIt<DioClient>()));
  getIt.registerSingleton(RequestRemoteDataSourceImpl(getIt<DioClient>()));

  // Repositories
  getIt
      .registerSingleton(HomeRepositoryImpl(getIt<HomeRemoteDataSourceImpl>()));
  getIt.registerSingleton(
      SmsSenderRepositoryImpl(getIt<SmsSenderRemoteDataSourceImpl>()));
  getIt
      .registerSingleton(AuthRepositoryImpl(getIt<AuthRemoteDataSourceImpl>()));
  getIt.registerSingleton(
      RequestRepositoryImpl(getIt<RequestRemoteDataSourceImpl>()));

  // UseCases
  getIt.registerSingleton(FetchTrips(getIt<HomeRepositoryImpl>()));
  getIt.registerSingleton(
      SendSmsVerificationCode(getIt<SmsSenderRepositoryImpl>()));
  getIt.registerSingleton(LoginByPhone(getIt<AuthRepositoryImpl>()));
  getIt.registerSingleton(LoginByApple(getIt<AuthRepositoryImpl>()));
  getIt.registerSingleton(LoginByGoogle(getIt<AuthRepositoryImpl>()));
  getIt.registerSingleton(SendRequest(getIt<RequestRepositoryImpl>()));

  // Cubits/Bloc
  getIt.registerSingleton(InternetCubit(connectivity: getIt<Connectivity>()));
  getIt.registerSingleton(AuthCubit(
      loginByPhone: getIt<LoginByPhone>(),
      loginByApple: getIt<LoginByApple>(),
      loginByGoogle: getIt<LoginByGoogle>()));

  // Router
  getIt.registerSingleton(AppRouter());
}
