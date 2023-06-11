import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/di/service_locator.dart';
import '../../../core/styles/styles.dart';
import 'cubit/sms_sender_cubit.dart';
import 'widgets/sms_sender_app_bar.dart';
import 'widgets/sms_sender_body.dart';

class SmsSenderScreen extends StatelessWidget {
  const SmsSenderScreen({super.key});

  static const routeName = '/sms-sender';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SmsSenderCubit>(),
      child: const Scaffold(
        backgroundColor: kWhite,
        appBar: SmsSenderAppBar(),
        body: SafeArea(
          child: SmsSenderBody(),
        ),
      ),
    );
  }
}
