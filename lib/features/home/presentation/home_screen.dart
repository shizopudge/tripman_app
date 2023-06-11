import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/di/service_locator.dart';
import '../../../core/styles/styles.dart';
import 'cubit/home_cubit.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>(),
      child: BlocListener<HomeCubit, HomeState>(
        listenWhen: (previous, current) =>
            current.tripType != previous.tripType ||
            current.dateInterval != previous.dateInterval,
        listener: (context, state) {
          context.read<HomeCubit>().loadTrips();
        },
        child: Scaffold(
          backgroundColor: kWhite,
          appBar: homeAppBar(
            context,
          ),
          body: const HomeBody(),
        ),
      ),
    );
  }
}
