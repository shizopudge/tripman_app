import 'package:flutter/material.dart';

import '../../../styles/styles.dart';
import '../../animations/fade_animation_y_down.dart';
import '../../animations/fade_animation_y_up.dart';
import '../buttons/rounded_text_button.dart';

class NotFoundBody extends StatelessWidget {
  const NotFoundBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          FadeAnimationYDown(
            delay: .5,
            child: Center(
              child: Text(
                'Объект удалён или не найден.',
                style: kSFProDisplayRegular.copyWith(
                  color: kBlack50,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          const Spacer(),
          FadeAnimationYUp(
            delay: 1.2,
            child: Container(
              decoration: const BoxDecoration(
                color: kWhite,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 12,
                    color: kBlack10,
                    offset: Offset(
                      2,
                      -4,
                    ),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: RoundedTextButton(
                  text: 'На главную',
                  onTap: () => Navigator.of(context).pop(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
