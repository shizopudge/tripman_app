import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/presentation/animations/fade_animation_y_down.dart';
import '../../../../core/styles/styles.dart';

class TripAppbar extends StatelessWidget implements PreferredSizeWidget {
  const TripAppbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(48);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: FadeAnimationYDown(
        delay: .2,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: SvgPicture.asset(
              'assets/icons/arrow_back.svg',
              colorFilter: const ColorFilter.mode(
                kWhite,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
