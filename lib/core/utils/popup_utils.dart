import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../domain/entities/date_interval/date_interval.dart';
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

  static void showBanner({
    required BuildContext context,
  }) {
    ScaffoldMessenger.of(context).clearMaterialBanners();
    final int random = Random().nextInt(4);
    ScaffoldMessenger.of(context).showMaterialBanner(
      switch (random) {
        (int random) when random == 0 => MaterialBanner(
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
        (int random) when random == 1 => MaterialBanner(
            backgroundColor: Colors.transparent,
            margin: const EdgeInsets.symmetric(vertical: 8),
            dividerColor: Colors.transparent,
            actions: const [
              SizedBox(),
            ],
            content: MessageBanner(
              onTap: () => ScaffoldMessenger.of(context).clearMaterialBanners(),
              iconPath: 'assets/icons/error_cross.svg',
              text: 'Ошибка загрузки страниц, неполадок с сервером и тд',
              buttonText: 'Кнопка',
              backgroundColor: kRed,
            ),
          ),
        (int random) when random == 2 => MaterialBanner(
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
        (_) => MaterialBanner(
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
              buttonText: 'Кнопка',
              backgroundColor: kBlack50,
            ),
          ),
      },
    );
  }

  static void showCalendar({
    required BuildContext context,
    required DateInterval? selectedDateInterval,
    required void Function(DateInterval) onDateIntervalChange,
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
              selectedDateInterval: selectedDateInterval,
              onDateIntervalChange: onDateIntervalChange,
            ),
          );
        },
      );

  static void showSnackBar({
    required BuildContext context,
    required Color color,
    required Widget content,
    Duration duration = const Duration(milliseconds: 5000),
  }) =>
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: content,
          backgroundColor: color,
          duration: duration,
        ),
      );

  static void showGlobalSnackBar({
    required BuildContext context,
    required Color color,
    required Widget messageText,
    Widget? icon,
    bool isDismissible = false,
    Duration duration = const Duration(days: 1),
  }) =>
      Get.rawSnackbar(
        messageText: messageText,
        isDismissible: false,
        duration: duration,
        backgroundColor: color,
        icon: icon,
        margin: EdgeInsets.zero,
      );
}
