import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/styles/styles.dart';
import '../../sms_sender/presentation/cubit/sms_sender_cubit.dart';
import 'widgets/code_verification_app_bar.dart';
import 'widgets/code_verification_body.dart';

class CodeVerificationScreen extends StatelessWidget {
  const CodeVerificationScreen({
    super.key,
  });

  static const routeName = '/code-confirmation';

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.read<SmsSenderCubit>().refresh();
        return true;
      },
      child: const Scaffold(
        backgroundColor: kWhite,
        appBar: CodeVerificationAppBar(),
        body: CodeVerificationBody(),
      ),
    );
  }
}
