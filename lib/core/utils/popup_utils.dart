import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/enums.dart';

import '../domain/entities/date_interval/date_interval.dart';
import '../error/failures/fault.dart';
import '../presentation/widgets/bottom_sheet/sized_bottom_sheet.dart';
import '../presentation/widgets/calendar/presentation/calendar.dart';
import '../presentation/widgets/dialogs/confirmation_banner.dart';
import '../presentation/widgets/dialogs/message_banner.dart';
import '../styles/styles.dart';

class PopupUtils {
  static Future<void> showMyBottomSheet({
    required BuildContext context,
    required Widget bottomSheet,
  }) async =>
      showModalBottomSheet(
        context: context,
        elevation: 0,
        backgroundColor: Colors.transparent,
        useSafeArea: true,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return bottomSheet;
        },
      );

  static void showCalendar({
    required BuildContext context,
    required void Function(DateInterval) onDateIntervalChange,
    List<DateInterval>? availableRanges,
    DateInterval? selectedDateInterval,
  }) =>
      showModalBottomSheet(
        context: context,
        elevation: 0,
        backgroundColor: Colors.transparent,
        useSafeArea: true,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return SizedBottomSheet(
            heightFactor: .95,
            title: 'Даты поездки',
            isScrollable: false,
            child: Calendar(
              availableRanges: availableRanges,
              selectedDateInterval: selectedDateInterval,
              onDateIntervalChange: onDateIntervalChange,
            ),
          );
        },
      );

  static void showBanner({
    required BuildContext context,
    required MessageType messageType,
    required Fault fault,
  }) {
    ScaffoldMessenger.of(context).clearMaterialBanners();
    //!
    final int random = Random().nextInt(4);
    switch (random) {
      case 0:
        ScaffoldMessenger.of(context).showMaterialBanner(
          MaterialBanner(
            backgroundColor: Colors.transparent,
            margin: const EdgeInsets.symmetric(vertical: 8),
            dividerColor: Colors.transparent,
            actions: const [
              SizedBox(),
            ],
            content: MessageBanner(
              onTap: () => ScaffoldMessenger.of(context).clearMaterialBanners(),
              iconPath: 'assets/icons/checkbox.svg',
              text: 'Автоматическое разрешение проблемы',
              buttonText: 'Кнопка',
              backgroundColor: kBlack,
            ),
          ),
        );
      case 1:
        ScaffoldMessenger.of(context).showMaterialBanner(
          MaterialBanner(
            backgroundColor: Colors.transparent,
            margin: const EdgeInsets.symmetric(vertical: 8),
            dividerColor: Colors.transparent,
            actions: const [
              SizedBox(),
            ],
            content: MessageBanner(
              onTap: () => ScaffoldMessenger.of(context).clearMaterialBanners(),
              iconPath: 'assets/icons/error.svg',
              text: 'Предупреждающие сообщения о работе системы',
              backgroundColor: kBlack50,
            ),
          ),
        );
      case 2:
        ScaffoldMessenger.of(context).showMaterialBanner(
          MaterialBanner(
            backgroundColor: Colors.transparent,
            margin: const EdgeInsets.symmetric(vertical: 8),
            dividerColor: Colors.transparent,
            actions: const [
              SizedBox(),
            ],
            content: MessageBanner(
              iconPath: 'assets/icons/error_cross.svg',
              text: 'Ошибка загрузки страниц, неполадок с сервером и тд',
              backgroundColor: kRed,
              onTap: () => ScaffoldMessenger.of(context).clearMaterialBanners(),
            ),
          ),
        );
      default:
        ScaffoldMessenger.of(context).showMaterialBanner(
          MaterialBanner(
            backgroundColor: Colors.transparent,
            margin: const EdgeInsets.symmetric(vertical: 8),
            dividerColor: Colors.transparent,
            actions: const [
              SizedBox(),
            ],
            content: ConfirmationBanner(
              iconPath: 'assets/icons/network.svg',
              text: 'Ошибка загрузки страниц, неполадок с сервером и тд',
              backgroundColor: kWhite,
              onTap: () => ScaffoldMessenger.of(context).clearMaterialBanners(),
              buttonText: 'Обновить',
            ),
          ),
        );
    }
  }

  static void showSnackBarMessage({
    required BuildContext context,
    required Color backgroundColor,
    required Color iconColor,
    required String iconPath,
    required String text,
    Duration duration = const Duration(milliseconds: 5000),
  }) =>
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
          backgroundColor: backgroundColor,
          duration: duration,
          content: Row(
            children: [
              SvgPicture.asset(
                iconPath,
                height: 22,
                colorFilter: ColorFilter.mode(
                  iconColor,
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Flexible(
                child: Text(
                  text,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: kSFProDisplayRegular.copyWith(fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      );
}
