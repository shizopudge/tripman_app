import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/di/service_locator.dart';
import 'cubit/code_verification_cubit.dart';
import 'widgets/code_verification_app_bar.dart';
import 'widgets/code_verification_body.dart';

class CodeVerificationScreen extends StatelessWidget {
  final String phoneNumber;
  const CodeVerificationScreen({
    super.key,
    required this.phoneNumber,
  });

  static const routeName = '/code-confirmation';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CodeVerificationCubit>()..init(),
      child: Scaffold(
        appBar: const CodeVerificationAppBar(),
        body: CodeVerificationBody(
          phoneNumber: phoneNumber,
        ),
      ),
    );
  }
}
