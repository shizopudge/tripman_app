import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/constants/enums.dart';
import '../../../core/error/failures/fault.dart';
import '../../../core/presentation/widgets/common/internet_listener.dart';
import '../../../core/utils/popup_utils.dart';

import '../../../core/domain/entities/date_interval/date_interval.dart';
import '../../../core/domain/entities/trip_type/trip_type.dart';
import '../../../core/presentation/animations/fade_animation_y_up.dart';
import '../../../core/presentation/widgets/buttons/rounded_border_button.dart';
import '../../../core/styles/styles.dart';
import 'cubit/home_cubit.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/home_failure_body.dart';
import 'widgets/home_loading_body.dart';
import 'widgets/home_success_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    final bool isMenuOpened =
        context.select<HomeCubit, bool>((cubit) => cubit.state.isMenuOpened);
    final TripType selectedTripType = context
        .select<HomeCubit, TripType>((cubit) => cubit.state.selectedTripType);
    final DateInterval? selectedDateInterval =
        context.select<HomeCubit, DateInterval?>(
            (cubit) => cubit.state.selectedDateInterval);
    return InternetListener(
      child: Scaffold(
        backgroundColor: kWhite,
        appBar: HomeAppBar(
          height: isMenuOpened ? MediaQuery.of(context).size.height * .28 : 140,
          isMenuOpened: isMenuOpened,
          selectedTripType: selectedTripType,
          selectedDateInterval: selectedDateInterval,
        ),
        body: BlocConsumer<HomeCubit, HomeState>(
          listenWhen: (previous, current) =>
              current.selectedTripType != previous.selectedTripType ||
              current.selectedDateInterval != previous.selectedDateInterval,
          listener: (context, state) {
            context.read<HomeCubit>().loadTrips();
          },
          builder: (context, state) => state.map(
            loading: (loadingState) => HomeLoadingBody(
                trips: loadingState.trips,
                isRefreshing: loadingState.isRefreshing),
            success: (successState) => HomeSuccessBody(
              trips: successState.trips,
              selectedDateInterval: successState.selectedDateInterval,
            ),
            failure: (failureState) =>
                HomeFailureBody(fault: failureState.fault),
          ),
        ),
        floatingActionButton: FadeAnimationYUp(
          delay: .8,
          child: RoundedBorderButton(
            onTap: () => PopupUtils.showBanner(
              context: context,
              messageType: MessageType.auto,
              fault: const Fault.unknown(),
            ),
            mainAxisSize: MainAxisSize.min,
            backgroundColor: kBlack,
            borderColor: kBlack,
            horizontalPadding: 25,
            children: [
              SvgPicture.asset(
                'assets/icons/map.svg',
              ),
              const SizedBox(
                width: 13,
              ),
              Flexible(
                child: Text(
                  'На карте',
                  overflow: TextOverflow.ellipsis,
                  style: kSFProDisplayMedium.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
