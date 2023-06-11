import 'package:equatable/equatable.dart';

class CodeVerificationScreenParams extends Equatable {
  final String phoneNumber;

  const CodeVerificationScreenParams(this.phoneNumber);

  @override
  List<Object?> get props => [phoneNumber];
}
