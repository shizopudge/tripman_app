import 'package:equatable/equatable.dart';

import '../../../../core/constants/type_defs.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../repositories/auth_repository.dart';

class LoginByApple implements UseCase<void, LoginByAppleParams> {
  final AuthRepository repository;

  LoginByApple(this.repository);
  @override
  FutureEither<void> call(params) async => await repository.loginByApple();
}

class LoginByAppleParams extends Equatable {
  @override
  List<Object?> get props => [];
}
