import '../../../../core/data/network/api/dio_client.dart';

abstract interface class AuthRemoteDataSource {
  Future<void> loginByPhone();
  Future<void> loginByGoogle();
  Future<void> loginByApple();
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final DioClient dioClient;

  AuthRemoteDataSourceImpl(this.dioClient);

  @override
  Future<void> loginByPhone() async {
    await Future.delayed(const Duration(milliseconds: 1500));
  }

  @override
  Future<void> loginByApple() async {
    await Future.delayed(const Duration(milliseconds: 1500));
    throw 'Приложение не удалось загрузить';
  }

  @override
  Future<void> loginByGoogle() async {
    await Future.delayed(const Duration(milliseconds: 1500));
    throw 'Приложение не удалось загрузить';
  }
}
