import 'package:equatable/equatable.dart';

import '../../../../core/constants/type_defs.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../repositories/sms_sender_repository.dart';

class SendSmsVerificationCode
    implements UseCase<void, SendSmsVerificationCodeParams> {
  final SmsSenderRepository repository;

  SendSmsVerificationCode(this.repository);

  @override
  FutureEither<String> call(SendSmsVerificationCodeParams params) async =>
      await repository.sendVerificationCode(params.phoneNumber);
}

class SendSmsVerificationCodeParams extends Equatable {
  final String phoneNumber;

  const SendSmsVerificationCodeParams({
    required this.phoneNumber,
  });

  @override
  List<Object?> get props => [phoneNumber];
}
