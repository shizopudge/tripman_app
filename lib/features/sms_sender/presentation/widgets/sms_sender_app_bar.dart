import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/presentation/animations/fade_animation_y_down.dart';
import '../../../../core/styles/styles.dart';

class SmsSenderAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SmsSenderAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleSpacing: 0,
      leading: FadeAnimationYDown(
        delay: .2,
        child: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: SvgPicture.asset(
            'assets/icons/arrow_back.svg',
          ),
        ),
      ),
      title: FadeAnimationYDown(
        delay: .2,
        child: Text(
          'Вход',
          style: kSFProDisplaySemiBold.copyWith(
            color: kBlack,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
