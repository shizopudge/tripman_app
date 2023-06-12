import 'package:equatable/equatable.dart';

import '../../../../core/constants/type_defs.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../repositories/auth_repository.dart';

class LoginByPhone implements UseCase<void, LoginByPhoneParams> {
  final AuthRepository repository;

  LoginByPhone(this.repository);
  @override
  FutureEither<void> call(params) async => await repository.loginByPhone();
}

class LoginByPhoneParams extends Equatable {
  @override
  List<Object?> get props => [];
}
