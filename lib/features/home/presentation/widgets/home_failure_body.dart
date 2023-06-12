import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/error/failures/fault.dart';
import '../../../../core/presentation/animations/fade_animation_y_down.dart';
import '../../../../core/presentation/widgets/common/failure_message.dart';
import '../../../../core/styles/styles.dart';
import '../cubit/home_cubit.dart';

class HomeFailureBody extends StatelessWidget {
  final Fault fault;
  const HomeFailureBody({
    super.key,
    required this.fault,
  });

  @override
  Widget build(BuildContext context) {
    return FadeAnimationYDown(
      delay: 0,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: FailureMessage(
                fault: fault,
                color: kBlack,
                onButtonTap: () => context.read<HomeCubit>().loadTrips(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
