import 'package:flutter/material.dart';

import '../../../../../styles/styles.dart';

class UnavailableDay extends StatelessWidget {
  final String day;
  const UnavailableDay({
    super.key,
    required this.day,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          day,
          style: kSFProDisplayRegular.copyWith(
            color: kBlack.withOpacity(.2),
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
