import 'package:equatable/equatable.dart';

import '../../../../core/constants/type_defs.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../repositories/auth_repository.dart';

class LoginByGoogle implements UseCase<void, LoginByGoogleParams> {
  final AuthRepository repository;

  LoginByGoogle(this.repository);
  @override
  FutureEither<void> call(params) async => await repository.loginByGoogle();
}

class LoginByGoogleParams extends Equatable {
  @override
  List<Object?> get props => [];
}
