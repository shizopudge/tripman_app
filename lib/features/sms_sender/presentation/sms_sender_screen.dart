import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/presentation/widgets/common/internet_listener.dart';

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
    return InternetListener(
      child: Scaffold(
        backgroundColor: kWhite,
        appBar: const SmsSenderAppBar(),
        body: BlocConsumer<SmsSenderCubit, SmsSenderState>(
          listenWhen: (previous, current) => current.status.isSuccess,
          buildWhen: (previous, current) => !current.status.isSuccess,
          listener: (context, state) {
            if (state.isFirstTime) {
              Navigator.of(context).pushNamed(
                CodeVerificationScreen.routeName,
              );
            }
          },
          builder: (context, state) {
            if (state.status.isLoading) {
              return const LoadingBody(
                color: kBlack,
              );
            }
            if (state.status.isFailure) {
              return FailureBody(
                onTap: () => context.read<SmsSenderCubit>().refresh(),
                fault: state.fault,
                buttonText: 'Обновить',
                color: kBlack,
              );
            }
            return SmsSenderBody(
              phoneNumber: state.phoneNumber,
              isCorrect: state.isCorrect,
            );
          },
        ),
      ),
    );
  }
}
