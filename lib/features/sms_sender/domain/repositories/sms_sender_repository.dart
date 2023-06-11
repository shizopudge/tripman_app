import '../../../../core/constants/type_defs.dart';

abstract interface class SmsSenderRepository {
  FutureEither<void> sendVerificationCode(String phoneNumber);
}
