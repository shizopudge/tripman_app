import 'package:flutter/material.dart';

import '../../../../core/presentation/animations/fade_animation_y_down.dart';
import '../../../../core/presentation/widgets/text/logo.dart';

class StartInitialBody extends StatelessWidget {
  const StartInitialBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeAnimationYDown(
            key: UniqueKey(),
            delay: 0,
            child: const Logo(),
          ),
        ],
      ),
    );
  }
}
