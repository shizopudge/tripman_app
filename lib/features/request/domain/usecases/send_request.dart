import 'package:equatable/equatable.dart';

import '../../../../core/constants/type_defs.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../repositories/request_repository.dart';

class SendRequest implements UseCase<void, SendRequestParams> {
  final RequestRepository repository;

  SendRequest(this.repository);

  @override
  FutureEither<void> call(SendRequestParams params) async => await repository
      .sendRequest(phoneNumber: params.phoneNumber, comment: params.comment);
}

class SendRequestParams extends Equatable {
  final String phoneNumber;
  final String comment;
  const SendRequestParams({
    required this.phoneNumber,
    required this.comment,
  });

  @override
  List<Object?> get props => [phoneNumber, comment];
}
