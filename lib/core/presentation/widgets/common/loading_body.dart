import 'package:flutter/material.dart';

import '../../../styles/styles.dart';
import '../../animations/fade_animation_y_down.dart';
import 'loader.dart';

class LoadingBody extends StatelessWidget {
  const LoadingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeAnimationYDown(
            delay: 0,
            child: Loader(
              color: kBlack,
            ),
          ),
        ],
      ),
    );
  }
}
