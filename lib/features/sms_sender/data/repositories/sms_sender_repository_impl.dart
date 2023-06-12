import 'package:dartz/dartz.dart';

import '../../../../core/constants/type_defs.dart';
import '../../../../core/error/failures/fault.dart';
import '../../domain/repositories/sms_sender_repository.dart';
import '../datasources/sms_sender_remote_data_source.dart';

class SmsSenderRepositoryImpl implements SmsSenderRepository {
  final SmsSenderRemoteDataSource remoteDataSource;

  SmsSenderRepositoryImpl(this.remoteDataSource);
  @override
  FutureEither<String> sendVerificationCode(String phoneNumber) async {
    try {
      final result = await remoteDataSource.sendVerificationCode(phoneNumber);
      return Right(result);
    } on Fault catch (e) {
      return Left(ServerFault(message: e.message));
    } catch (e) {
      return Left(ServerFault(message: e.toString()));
    }
  }
}
