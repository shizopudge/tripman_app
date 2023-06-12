import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

import '../../../core/domain/entities/request_screen_arguments/request_screen_arguments.dart';
import '../../../core/domain/entities/trip/trip.dart';
import '../../../core/styles/styles.dart';
import '../../../core/utils/popup_utils.dart';
import '../../request/presentation/request_screen.dart';
import 'widgets/trip_app_bar.dart';
import 'widgets/trip_body.dart';
import 'widgets/trip_footer.dart';

class TripScreen extends StatelessWidget {
  final Trip trip;
  final CarouselController _carouselController;
  final ValueNotifier<int> _currentImageNotifier;
  const TripScreen(
      {super.key,
      required this.trip,
      required CarouselController carouselController,
      required ValueNotifier<int> currentImageNotifier})
      : _carouselController = carouselController,
        _currentImageNotifier = currentImageNotifier;

  static const routeName = '/trip';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      extendBodyBehindAppBar: true,
      appBar: const TripAppbar(),
      body: TripBody(
        trip: trip,
        carouselController: _carouselController,
        currentImageNotifier: _currentImageNotifier,
      ),
      persistentFooterAlignment: AlignmentDirectional.center,
      persistentFooterButtons: [
        TripFooter(
          onTap: () => PopupUtils.showCalendar(
            context: context,
            selectedDateInterval: null,
            onDateIntervalChange: (dateInterval) => Future.delayed(
              Duration.zero,
              () => Navigator.of(context).pushNamed(
                RequestScreen.routeName,
                arguments: RequestScreenArguments(
                  trip: trip,
                  dateInterval: dateInterval,
                ),
              ),
            ),
          ),
          cost: trip.minCost,
          minMembersCount: trip.minMembersCount,
          maxMembersCount: trip.maxMembersCount,
        )
      ],
    );
  }
}
