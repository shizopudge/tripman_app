import '../../../../core/data/network/api/dio_client.dart';

abstract interface class SmsSenderRemoteDataSource {
  Future<void> sendVerificationCode(String phoneNumber);
}

class SmsSenderRemoteDataSourceImpl implements SmsSenderRemoteDataSource {
  final DioClient dioClient;

  SmsSenderRemoteDataSourceImpl(this.dioClient);

  @override
  Future<void> sendVerificationCode(String phoneNumber) async {}
}
