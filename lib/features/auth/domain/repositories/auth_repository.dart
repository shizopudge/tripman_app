import '../../../../core/constants/type_defs.dart';

abstract interface class AuthRepository {
  FutureEither<void> loginByPhone();
  FutureEither<void> loginByGoogle();
  FutureEither<void> loginByApple();
  void logout();
}
