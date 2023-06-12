import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/styles/styles.dart';

import '../../../../core/error/failures/fault.dart';
import '../../../../core/presentation/animations/fade_animation.dart';
import '../../../../core/presentation/animations/fade_animation_y_down.dart';
import '../../../../core/presentation/widgets/common/failure_message.dart';
import '../cubit/auth_cubit.dart';

class AuthFailureBody extends StatelessWidget {
  final Fault fault;
  const AuthFailureBody({
    super.key,
    required this.fault,
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
              fault: fault,
              color: kWhite,
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
                onTap: () => context.read<AuthCubit>().refresh(),
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
