import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';

import '../../features/auth/presentation/auth_screen.dart';
import '../../features/code_verification/presentation/code_verification_screen.dart';
import '../../features/code_verification/presentation/cubit/code_verification_cubit.dart';
import '../../features/home/domain/usecases/fetch_trips.dart';
import '../../features/home/presentation/cubit/home_cubit.dart';
import '../../features/home/presentation/home_screen.dart';
import '../../features/objects/presentation/objects_screen.dart';
import '../../features/request/domain/usecases/send_request.dart';
import '../../features/request/presentation/cubit/request_cubit.dart';
import '../../features/request/presentation/request_screen.dart';
import '../../features/sms_sender/domain/usecases/send_verification_code.dart';
import '../../features/sms_sender/presentation/cubit/sms_sender_cubit.dart';
import '../../features/sms_sender/presentation/sms_sender_screen.dart';
import '../../features/trip/presentation/trip_screen.dart';
import '../data/local/internet/internet_cubit.dart';
import '../di/service_locator.dart';
import '../domain/entities/request_screen_arguments/request_screen_arguments.dart';
import '../domain/entities/trip_screen_arguments/trip_screen_arguments.dart';

class AppRouter {
  static const fadeTransitionDuration = Duration(milliseconds: 250);

  final _smsSenderCubit =
      SmsSenderCubit(sendSmsVerificationCode: getIt<SendSmsVerificationCode>());

  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return PageTransition(
          duration: fadeTransitionDuration,
          type: PageTransitionType.fade,
          child: const AuthScreen(),
        );
      case SmsSenderScreen.routeName:
        return PageTransition(
          duration: fadeTransitionDuration,
          type: PageTransitionType.fade,
          child: BlocProvider.value(
            value: _smsSenderCubit,
            child: const SmsSenderScreen(),
          ),
        );
      case CodeVerificationScreen.routeName:
        return PageTransition(
          duration: fadeTransitionDuration,
          type: PageTransitionType.fade,
          child: MultiBlocProvider(
            providers: [
              BlocProvider.value(
                value: _smsSenderCubit,
              ),
              BlocProvider(
                create: (_) => CodeVerificationCubit(
                  smsSenderCubit: _smsSenderCubit,
                )..init(),
              ),
            ],
            child: const CodeVerificationScreen(),
          ),
        );
      case HomeScreen.routeName:
        return PageTransition(
          duration: fadeTransitionDuration,
          type: PageTransitionType.fade,
          child: BlocProvider(
            create: (_) => HomeCubit(
              fetchTrips: getIt<FetchTrips>(),
              internetCubit: getIt<InternetCubit>(),
            )..init(),
            child: const HomeScreen(),
          ),
        );
      case TripScreen.routeName:
        final args = routeSettings.arguments as TripScreenArguments;
        return PageTransition(
          duration: fadeTransitionDuration,
          type: PageTransitionType.fade,
          child: TripScreen(
            trip: args.trip,
            carouselController: args.carouselController,
            currentImageNotifier: args.currentImageNotifier,
          ),
        );
      case RequestScreen.routeName:
        final args = routeSettings.arguments as RequestScreenArguments;
        return PageTransition(
          duration: fadeTransitionDuration,
          type: PageTransitionType.fade,
          child: BlocProvider(
            create: (_) => RequestCubit(sendRequest: getIt<SendRequest>()),
            child: RequestScreen(
              trip: args.trip,
              dateInterval: args.dateInterval,
            ),
          ),
        );
      case ObjectsScreen.routeName:
        return PageTransition(
          duration: fadeTransitionDuration,
          type: PageTransitionType.fade,
          child: const ObjectsScreen(),
        );
      default:
        return null;
    }
  }

  void dispose() {
    _smsSenderCubit.close();
  }
}
