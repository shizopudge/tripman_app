import 'package:flutter/material.dart';

import '../../../../core/presentation/widgets/buttons/close_button.dart';
import '../../../../core/styles/styles.dart';

class RequestAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RequestAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      forceMaterialTransparency: true,
      titleSpacing: 20,
      title: Text(
        'Заявка на бронирование',
        style: kSFProDisplaySemiBold.copyWith(
          fontSize: 20,
          color: kBlack,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 26),
          child: MyCloseButton(
            onTap: () => Navigator.of(context).pop(),
          ),
        ),
      ],
    );
  }
}
