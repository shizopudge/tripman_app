import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/domain/entities/date_interval/date_interval.dart';
import '../../../../core/domain/entities/trip/trip.dart';
import '../../../../core/presentation/animations/fade_animation_y_down.dart';
import '../../../../core/presentation/widgets/cards/trip_card.dart';
import '../../../../core/styles/styles.dart';
import '../../../../core/utils/popup_utils.dart';
import '../cubit/home_cubit.dart';

class HomeSuccessBody extends StatelessWidget {
  final List<Trip> trips;
  final DateInterval? selectedDateInterval;
  const HomeSuccessBody({
    super.key,
    required this.trips,
    this.selectedDateInterval,
  });

  @override
  Widget build(BuildContext context) {
    if (trips.isNotEmpty) {
      return RefreshIndicator(
        onRefresh: () async =>
            context.read<HomeCubit>().refreshTrips(trips: trips),
        color: kWhite,
        backgroundColor: kBlack,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 20),
          itemCount: trips.length,
          itemBuilder: (context, index) {
            final Trip trip = trips[index];
            return TripCard(
              trip: trip,
            );
          },
        ),
      );
    } else {
      return FadeAnimationYDown(
        delay: 0,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 76),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Свободных объектов не найдено. Попробуйте изменить ',
                style: kSFProDisplayRegular.copyWith(
                  fontSize: 15,
                  color: kBlack50,
                ),
                children: [
                  TextSpan(
                    text: 'даты поездки.',
                    style: kSFProDisplayRegular.copyWith(
                      fontSize: 15,
                      color: kBlack,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => PopupUtils.showCalendar(
                            context: context,
                            selectedDateInterval: selectedDateInterval,
                            onDateIntervalChange: (dateInterval) {
                              context.read<HomeCubit>().setDateInterval(
                                    dateInterval: dateInterval,
                                  );
                              Navigator.of(context).pop();
                            },
                          ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
}
