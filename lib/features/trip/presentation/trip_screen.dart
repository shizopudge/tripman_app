import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

import '../../../core/domain/entities/request_screen_arguments/request_screen_arguments.dart';
import '../../../core/domain/entities/trip/trip.dart';
import '../../../core/presentation/widgets/common/internet_listener.dart';
import '../../../core/presentation/widgets/common/not_found_body.dart';
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
    //! Hard coded trip not found page
    return InternetListener(
      child: Scaffold(
        backgroundColor: kWhite,
        extendBodyBehindAppBar: true,
        appBar: TripAppbar(
          iconColor: trip.id == '2' ? kBlack : kWhite,
        ),
        body: trip.id == '2'
            ? const NotFoundBody()
            : TripBody(
                trip: trip,
                carouselController: _carouselController,
                currentImageNotifier: _currentImageNotifier,
              ),
        persistentFooterAlignment: AlignmentDirectional.center,
        persistentFooterButtons: trip.id == '2'
            ? null
            : [
                TripFooter(
                  onTap: () => PopupUtils.showCalendar(
                    context: context,
                    availableRanges: trip.dateIntervals,
                    onDateIntervalChange: (dateInterval) =>
                        Navigator.of(context)
                          ..pop()
                          ..pushNamed(
                            RequestScreen.routeName,
                            arguments: RequestScreenArguments(
                              trip: trip,
                              dateInterval: dateInterval,
                            ),
                          ),
                  ),
                  cost: trip.minCost,
                  minMembersCount: trip.minMembersCount,
                  maxMembersCount: trip.maxMembersCount,
                )
              ],
      ),
    );
  }
}
