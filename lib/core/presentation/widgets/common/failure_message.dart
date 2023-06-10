import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../error/failures/failures.dart';
import '../../../styles/styles.dart';
import '../buttons/rounded_text_button.dart';

class FailureMessage extends StatelessWidget {
  final String iconPath;
  final Failure failure;
  final Color? color;
  final String buttonText;
  final VoidCallback onButtonTap;
  const FailureMessage({
    super.key,
    required this.failure,
    required this.iconPath,
    this.color,
    this.buttonText = 'Обновить',
    required this.onButtonTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (failure is ServerFailure)
          SvgPicture.asset(
            'assets/icons/network.svg',
            colorFilter: color != null
                ? ColorFilter.mode(color!, BlendMode.srcIn)
                : null,
          )
        else
          SvgPicture.asset(
            'assets/icons/error.svg',
            colorFilter: color != null
                ? ColorFilter.mode(color!, BlendMode.srcIn)
                : null,
          ),
        const SizedBox(
          height: 10,
        ),
        Text(
          failure.message,
          textAlign: TextAlign.center,
          style: kSFProDisplayRegular.copyWith(
            fontSize: 14,
            color: color,
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        RoundedTextButton(
          onTap: onButtonTap,
          text: buttonText,
        ),
      ],
    );
  }
}
