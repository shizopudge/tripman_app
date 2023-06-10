import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCloseButton extends StatelessWidget {
  final VoidCallback onTap;
  const MyCloseButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      padding: EdgeInsets.zero,
      visualDensity: VisualDensity.compact,
      icon: SvgPicture.asset(
        'assets/icons/close.svg',
      ),
    );
  }
}
