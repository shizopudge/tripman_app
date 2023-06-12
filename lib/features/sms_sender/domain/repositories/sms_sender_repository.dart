import '../../../../core/constants/type_defs.dart';

abstract interface class SmsSenderRepository {
  FutureEither<String> sendVerificationCode(String phoneNumber);
}
