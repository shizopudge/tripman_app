import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/error/failures/failures.dart';
import '../../../../core/presentation/animations/fade_animation.dart';
import '../../../../core/presentation/animations/fade_animation_y_down.dart';
import '../../../../core/presentation/widgets/common/failure_message.dart';
import '../cubit/start_cubit.dart';

class StartFailureBody extends StatelessWidget {
  final Failure failure;
  const StartFailureBody({
    super.key,
    required this.failure,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Spacer(),
          FadeAnimation(
            delay: 1,
            child: FailureMessage(
              failure: failure,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 90,
            ),
            child: FadeAnimationYDown(
              delay: 1,
              child: InkWell(
                onTap: () => context.read<StartCubit>().emitInitial(),
                borderRadius: BorderRadius.circular(20),
                child: SvgPicture.asset(
                  'assets/icons/reload.svg',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
