import 'package:flutter/material.dart';

import '../../animations/fade_animation_y_down.dart';
import 'loader.dart';

class LoadingBody extends StatelessWidget {
  final Color color;
  const LoadingBody({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeAnimationYDown(
            delay: 0,
            child: Loader(
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
