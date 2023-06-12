import '../../../../core/constants/type_defs.dart';

abstract interface class RequestRepository {
  FutureEither<void> sendRequest(
      {required String phoneNumber, required String comment});
}
