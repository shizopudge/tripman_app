import '../../../../core/data/network/api/dio_client.dart';

abstract interface class SmsSenderRemoteDataSource {
  Future<String> sendVerificationCode(String phoneNumber);
}

class SmsSenderRemoteDataSourceImpl implements SmsSenderRemoteDataSource {
  final DioClient dioClient;

  SmsSenderRemoteDataSourceImpl(this.dioClient);

  @override
  Future<String> sendVerificationCode(String phoneNumber) async {
    await Future.delayed(const Duration(milliseconds: 1500));
    return '5555';
  }
}
