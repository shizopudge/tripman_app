import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/presentation/animations/fade_animation_y_down.dart';
import '../../../sms_sender/presentation/cubit/sms_sender_cubit.dart';

class CodeVerificationAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CodeVerificationAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: FadeAnimationYDown(
        delay: .2,
        child: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
            context.read<SmsSenderCubit>().refresh();
          },
          icon: SvgPicture.asset(
            'assets/icons/arrow_back.svg',
          ),
        ),
      ),
    );
  }
}
