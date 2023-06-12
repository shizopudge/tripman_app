import '../../../../core/data/network/api/dio_client.dart';

abstract interface class RequestRemoteDataSource {
  Future<void> sendRequest(
      {required String phoneNumber, required String comment});
}

class RequestRemoteDataSourceImpl implements RequestRemoteDataSource {
  final DioClient dioClient;

  RequestRemoteDataSourceImpl(this.dioClient);

  @override
  Future<void> sendRequest(
      {required String phoneNumber, required String comment}) async {
    await Future.delayed(const Duration(milliseconds: 1500));
  }
}
