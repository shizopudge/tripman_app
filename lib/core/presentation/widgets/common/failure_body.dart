import 'package:flutter/material.dart';

import '../../../error/failures/fault.dart';
import '../../animations/fade_animation_y_down.dart';
import '../../animations/fade_animation_y_up.dart';
import '../buttons/rounded_text_button.dart';
import 'failure_message.dart';

class FailureBody extends StatelessWidget {
  final VoidCallback onTap;
  final Fault fault;
  final String buttonText;

  final Color? color;
  const FailureBody({
    super.key,
    required this.onTap,
    required this.fault,
    required this.buttonText,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          FadeAnimationYDown(
            delay: 0,
            child: FailureMessage(
              fault: fault,
              color: color,
            ),
          ),
          const Spacer(),
          FadeAnimationYUp(
            delay: .25,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RoundedTextButton(
                text: buttonText,
                onTap: onTap,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
