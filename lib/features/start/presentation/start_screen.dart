import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tripman/features/start/presentation/widgets/start_initial_body.dart';

import '../../../core/di/service_locator.dart';
import '../../../core/styles/styles.dart';
import 'cubit/start_cubit.dart';
import 'widgets/start_failure_body.dart';
import 'widgets/start_loaded_body.dart';
import 'widgets/start_loading_body.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<StartCubit>()..init(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: kBlack,
        body: SafeArea(
          child: BlocConsumer<StartCubit, StartState>(
            listener: (context, state) {},
            builder: (context, state) => state.when(
              initial: () => const StartInitialBody(),
              loaded: () => const StartLoadedBody(),
              loading: () => const StartLoadingBody(),
              failure: (failure) => StartFailureBody(failure: failure),
            ),
          ),
        ),
      ),
    );
  }
}
