import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/domain/entities/date_interval/date_interval.dart';
import '../../../../core/error/failures/failures.dart';
import '../../../../core/presentation/animations/fade_animation_y_down.dart';
import '../../../../core/presentation/widgets/cards/trip_card.dart';
import '../../../../core/presentation/widgets/common/failure_message.dart';
import '../../../../core/presentation/widgets/common/loader.dart';
import '../../../../core/styles/styles.dart';
import '../../../../core/utils/popup_utils.dart';
import '../../domain/entities/trip.dart';
import '../cubit/home_cubit.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final homeState = context.watch<HomeCubit>().state;
    return homeState.map(
      loading: (loadingState) => _buildLoading(
        trips: loadingState.trips,
        isRefreshing: loadingState.isRefreshing,
      ),
      success: (successState) => _buildSuccess(
        context: context,
        trips: successState.trips,
        selectedDateInterval: successState.dateInterval,
      ),
      failure: (failureState) => _buildFailure(
        context: context,
        failure: failureState.failure,
      ),
    );
  }

  Widget _buildLoading(
      {required List<Trip> trips, required bool isRefreshing}) {
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

  Widget _buildSuccess({
    required BuildContext context,
    required List<Trip> trips,
    required DateInterval? selectedDateInterval,
  }) {
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
                            onDateIntervalChange: (dateInterval) =>
                                context.read<HomeCubit>().setDateInterval(
                                      dateInterval: dateInterval,
                                    ),
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

  Widget _buildFailure({
    required BuildContext context,
    required Failure failure,
  }) =>
      FadeAnimationYDown(
        delay: 0,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: FailureMessage(
                  failure: failure,
                  iconPath: 'assets/icons/error.svg',
                  color: kBlack,
                  onButtonTap: () => context.read<HomeCubit>().loadTrips(),
                ),
              ),
            ],
          ),
        ),
      );
}
