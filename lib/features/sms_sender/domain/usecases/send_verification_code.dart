import 'package:equatable/equatable.dart';

import '../../../../core/constants/type_defs.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../repositories/sms_sender_repository.dart';

class SendSmsVerificationCode implements UseCase<void, Params> {
  final SmsSenderRepository repository;

  SendSmsVerificationCode(this.repository);

  @override
  FutureEither<void> call(Params params) async {
    return await repository.sendVerificationCode(params.phoneNumber);
  }
}

class Params extends Equatable {
  final String phoneNumber;

  const Params({
    required this.phoneNumber,
  });

  @override
  List<Object?> get props => [phoneNumber];
}
