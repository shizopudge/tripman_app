import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../features/code_verification/presentation/code_verification_screen.dart';
import '../../features/home/presentation/home_screen.dart';
import '../../features/sms_sender/presentation/sms_sender_screen.dart';
import '../../features/start/presentation/start_screen.dart';
import '../domain/entities/code_confirmation_screen_params/code_confiramtion_screen_params.dart';

class AppRouter {
  static const fadeTransitionDuration = Duration(milliseconds: 250);

  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const StartScreen(),
        );
      case SmsSenderScreen.routeName:
        return PageTransition(
          duration: fadeTransitionDuration,
          type: PageTransitionType.fade,
          child: const SmsSenderScreen(),
        );
      case CodeVerificationScreen.routeName:
        final codeConfiramtionScreenParams =
            routeSettings.arguments as CodeVerificationScreenParams;
        return PageTransition(
          duration: fadeTransitionDuration,
          type: PageTransitionType.fade,
          child: CodeVerificationScreen(
            phoneNumber: codeConfiramtionScreenParams.phoneNumber,
          ),
        );
      case HomeScreen.routeName:
        return PageTransition(
          duration: fadeTransitionDuration,
          type: PageTransitionType.fade,
          child: const HomeScreen(),
        );
      default:
        return null;
    }
  }

  void dispose() {}
}
