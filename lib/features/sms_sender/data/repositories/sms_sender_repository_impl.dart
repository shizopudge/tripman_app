import 'package:dartz/dartz.dart';

import '../../../../core/constants/type_defs.dart';
import '../../../../core/error/failures/failures.dart';
import '../../domain/repositories/sms_sender_repository.dart';
import '../datasources/sms_sender_remote_data_source.dart';

class SmsSenderRepositoryImpl implements SmsSenderRepository {
  final SmsSenderRemoteDataSource remoteDataSource;

  SmsSenderRepositoryImpl({required this.remoteDataSource});
  @override
  FutureEither<void> sendVerificationCode(String phoneNumber) async {
    try {
      return Right(await remoteDataSource.sendVerificationCode(phoneNumber));
    } on Failure catch (e) {
      return Left(ServerFailure(message: e.message));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
