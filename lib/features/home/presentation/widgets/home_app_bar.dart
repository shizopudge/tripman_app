import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/data/local/constants.dart';
import '../../../../core/domain/entities/date_interval/date_interval.dart';
import '../../../../core/domain/entities/trip_type/trip_type.dart';
import '../../../../core/presentation/animations/fade_animation_y_down.dart';
import '../../../../core/presentation/widgets/cards/trip_type_card.dart';
import '../../../../core/presentation/widgets/dialogs/notification_dialog.dart';
import '../../../../core/styles/styles.dart';
import '../../../../core/utils/popup_utils.dart';
import '../cubit/home_cubit.dart';
import 'date_interval_field.dart';

AppBar homeAppBar(
  BuildContext context,
) {
  final isMenuOpened =
      context.select<HomeCubit, bool>((cubit) => cubit.state.isMenuOpened);
  final selectedTripType =
      context.select<HomeCubit, TripType>((cubit) => cubit.state.tripType);
  final selectedDateInterval = context
      .select<HomeCubit, DateInterval?>((cubit) => cubit.state.dateInterval);
  if (isMenuOpened) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: MediaQuery.of(context).size.height * .28,
      forceMaterialTransparency: true,
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        background: FadeAnimationYDown(
          delay: 0,
          child: Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ).copyWith(
              top: MediaQuery.of(context).size.height * .04,
              bottom: MediaQuery.of(context).size.height * .02,
            ),
            decoration: const BoxDecoration(
              color: kBlack,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(
                  20,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Меню',
                      style: kSFProDisplaySemiBold.copyWith(
                        fontSize: 20,
                      ),
                    ),
                    IconButton(
                      onPressed: () =>
                          context.read<HomeCubit>().setIsMenuOpened(),
                      icon: SvgPicture.asset(
                        'assets/icons/close.svg',
                        colorFilter: const ColorFilter.mode(
                          kWhite,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * .005),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Объекты',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: kSFProDisplaySemiBold.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async => await showDialog(
                    context: context,
                    builder: (context) => const NotificationDialog(
                      title: 'Объект добавлен, ожидайте модерации. ',
                      description: 'Время модерации среднем\nзанимает 2-3 часа',
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * .005),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Добавить объекты',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: kSFProDisplaySemiBold.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * .005),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Выход',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: kSFProDisplaySemiBold.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  } else {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 140,
      titleSpacing: 20,
      centerTitle: true,
      forceMaterialTransparency: true,
      elevation: 0,
      title: FadeAnimationYDown(
        delay: 0,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: DateIntervalField(
                    selectedDateInterval: selectedDateInterval,
                    onTap: () => PopupUtils.showCalendar(
                      context: context,
                      selectedDateInterval: selectedDateInterval,
                      onDateIntervalChange: (dateInterval) =>
                          context.read<HomeCubit>().setDateInterval(
                                dateInterval: dateInterval,
                              ),
                    ),
                    onClear: () => context
                        .read<HomeCubit>()
                        .setDateInterval(dateInterval: null),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () => context.read<HomeCubit>().setIsMenuOpened(),
                  borderRadius: BorderRadius.circular(21),
                  child: CircleAvatar(
                    radius: 24,
                    backgroundColor: kBlack,
                    child: SvgPicture.asset(
                      'assets/icons/menu.svg',
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 72,
              width: double.infinity,
              child: Center(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: LocalConstants.tripTypes.length,
                  itemBuilder: (context, index) {
                    final TripType tripType = LocalConstants.tripTypes[index];
                    return TripTypeCard(
                      onTap: () => context
                          .read<HomeCubit>()
                          .setTripType(tripType: tripType),
                      isSelected: selectedTripType == tripType,
                      tripType: tripType,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
