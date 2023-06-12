import 'package:dartz/dartz.dart';

import '../../../../core/constants/type_defs.dart';
import '../../../../core/error/failures/fault.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  FutureEither<void> loginByPhone() async {
    try {
      final result = await remoteDataSource.loginByPhone();
      return Right(result);
    } on Fault catch (e) {
      return Left(ServerFault(message: e.message));
    } catch (e) {
      return Left(ServerFault(message: e.toString()));
    }
  }

  @override
  FutureEither<void> loginByApple() async {
    try {
      final result = await remoteDataSource.loginByApple();
      return Right(result);
    } on Fault catch (e) {
      return Left(ServerFault(message: e.message));
    } catch (e) {
      return Left(ServerFault(message: e.toString()));
    }
  }

  @override
  FutureEither<void> loginByGoogle() async {
    try {
      final result = await remoteDataSource.loginByGoogle();
      return Right(result);
    } on Fault catch (e) {
      return Left(ServerFault(message: e.message));
    } catch (e) {
      return Left(ServerFault(message: e.toString()));
    }
  }

  @override
  void logout() {}
}
