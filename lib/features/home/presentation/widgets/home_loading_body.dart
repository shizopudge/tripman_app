import 'package:flutter/material.dart';

import '../../../../core/domain/entities/trip/trip.dart';
import '../../../../core/presentation/animations/fade_animation_y_down.dart';
import '../../../../core/presentation/widgets/cards/trip_card.dart';
import '../../../../core/presentation/widgets/common/loader.dart';
import '../../../../core/styles/styles.dart';

class HomeLoadingBody extends StatelessWidget {
  final List<Trip> trips;
  final bool isRefreshing;
  const HomeLoadingBody({
    super.key,
    required this.trips,
    required this.isRefreshing,
  });

  @override
  Widget build(BuildContext context) {
    if (isRefreshing) {
      return Column(
        children: [
          const FadeAnimationYDown(
            delay: 0,
            child: Padding(
              padding: EdgeInsets.only(
                top: 22,
                bottom: 2,
              ),
              child: Loader(
                color: kBlack,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 20),
              itemCount: trips.length,
              itemBuilder: (context, index) {
                final Trip trip = trips[index];
                return TripCard(
                  trip: trip,
                );
              },
            ),
          ),
        ],
      );
    } else {
      return const Center(
        child: FadeAnimationYDown(
          delay: 0,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 22,
            ),
            child: Loader(
              color: kBlack,
            ),
          ),
        ),
      );
    }
  }
}
