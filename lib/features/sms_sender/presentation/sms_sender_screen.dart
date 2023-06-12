import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/presentation/widgets/common/failure_body.dart';
import '../../../core/presentation/widgets/common/loading_body.dart';
import '../../../core/styles/styles.dart';
import '../../code_verification/presentation/code_verification_screen.dart';
import 'cubit/sms_sender_cubit.dart';
import 'widgets/sms_sender_app_bar.dart';
import 'widgets/sms_sender_body.dart';

class SmsSenderScreen extends StatelessWidget {
  const SmsSenderScreen({super.key});

  static const routeName = '/sms-sender';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: const SmsSenderAppBar(),
      body: BlocConsumer<SmsSenderCubit, SmsSenderState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (smsVerificationCode, phoneNumber, isFirstTime) {
              if (isFirstTime) {
                Navigator.of(context).pushNamed(
                  CodeVerificationScreen.routeName,
                );
              }
            },
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            loading: (_) => const LoadingBody(),
            input: (inputState) => SmsSenderBody(
              phoneNumber: inputState.phoneNumber,
              isCorrect: inputState.isCorrect,
            ),
            failure: (failureState) => FailureBody(
              onTap: () => context.read<SmsSenderCubit>().refresh(),
              fault: failureState.fault,
              buttonText: 'Обновить',
              color: kBlack,
            ),
            orElse: () => const LoadingBody(),
          );
        },
      ),
    );
  }
}
