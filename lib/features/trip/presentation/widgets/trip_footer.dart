import 'package:flutter/material.dart';

import '../../../../core/presentation/animations/fade_animation_y_up.dart';
import '../../../../core/presentation/widgets/buttons/rounded_text_button.dart';
import '../../../../core/styles/styles.dart';

class TripFooter extends StatelessWidget {
  final VoidCallback onTap;
  final int cost;
  final int minMembersCount;
  final int maxMembersCount;
  const TripFooter({
    super.key,
    required this.cost,
    required this.minMembersCount,
    required this.maxMembersCount,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return FadeAnimationYUp(
      delay: 1.1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$minMembersCount-$maxMembersCount гостей',
                    overflow: TextOverflow.visible,
                    style: kSFProDisplayRegular.copyWith(
                      color: kBlack50,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '$cost ₽ / сутки',
                    overflow: TextOverflow.visible,
                    style: kSFProDisplayMedium.copyWith(
                      color: kBlack,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Flexible(
              flex: 3,
              child: RoundedTextButton(
                text: 'Свободные даты',
                onTap: onTap,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
