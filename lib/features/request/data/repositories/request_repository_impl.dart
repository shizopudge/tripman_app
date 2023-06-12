import 'package:dartz/dartz.dart';

import '../../../../core/constants/type_defs.dart';
import '../../../../core/error/failures/fault.dart';
import '../../domain/repositories/request_repository.dart';
import '../datasources/request_remote_data_source.dart';

class RequestRepositoryImpl implements RequestRepository {
  final RequestRemoteDataSource remoteDataSource;

  RequestRepositoryImpl(this.remoteDataSource);
  @override
  FutureEither<void> sendRequest(
      {required String phoneNumber, required String comment}) async {
    try {
      final result = await remoteDataSource.sendRequest(
          phoneNumber: phoneNumber, comment: comment);
      return Right(result);
    } on Fault catch (e) {
      return Left(ServerFault(message: e.message));
    } catch (e) {
      return Left(ServerFault(message: e.toString()));
    }
  }
}
