import 'package:flutter/material.dart';

import '../../../../core/presentation/animations/fade_animation_y_down.dart';
import '../../../../core/presentation/animations/fade_animation_y_up.dart';
import '../../../../core/presentation/widgets/common/loader.dart';
import '../../../../core/presentation/widgets/text/logo.dart';
import '../../../../core/styles/styles.dart';

class StartLoadingBody extends StatelessWidget {
  const StartLoadingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Spacer(),
          FadeAnimationYDown(
            key: UniqueKey(),
            delay: 0,
            child: const Logo(),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(
              bottom: 90,
            ),
            child: FadeAnimationYUp(
              delay: 0,
              child: Loader(
                color: kWhite,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
