import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../styles/styles.dart';
import '../buttons/rounded_text_button.dart';

class MessageBanner extends StatelessWidget {
  final VoidCallback? onTap;
  final String iconPath;
  final String text;
  final String buttonText;
  final Color backgroundColor;
  const MessageBanner({
    super.key,
    required this.iconPath,
    required this.text,
    required this.backgroundColor,
    this.onTap,
    this.buttonText = 'Кнопка',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16,
        ),
        color: backgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                iconPath,
                height: 20,
                width: 20,
                colorFilter: const ColorFilter.mode(
                  kWhite,
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Flexible(
                child: Text(
                  text,
                  overflow: TextOverflow.visible,
                  style: kSFProDisplayRegular.copyWith(
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          if (onTap != null)
            const SizedBox(
              height: 16,
            ),
          if (onTap != null)
            RoundedTextButton(
              isEnabled: true,
              onTap: onTap,
              text: buttonText,
              invertColors: true,
            ),
        ],
      ),
    );
  }
}
