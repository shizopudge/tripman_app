import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/presentation/widgets/common/internet_listener.dart';
import '../../../core/styles/styles.dart';
import 'cubit/auth_cubit.dart';
import 'widgets/auth_failure_body.dart';
import 'widgets/auth_initial_body.dart';
import 'widgets/auth_loading_body.dart';
import 'widgets/auth_unauthenticated_body.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return InternetListener(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: kBlack,
        body: SafeArea(
          child: BlocConsumer<AuthCubit, AuthState>(
            listener: (context, state) {
              state.whenOrNull(
                authenticated: () => Navigator.of(context)
                    .pushNamedAndRemoveUntil('/home', (route) => false),
              );
            },
            builder: (context, state) => state.maybeWhen(
              initial: () => const AuthInitialBody(),
              unauthenticated: () => const AuthUnauthenticatedBody(),
              loading: () => const AuthLoadingBody(),
              failure: (fault) => AuthFailureBody(fault: fault),
              orElse: () => const AuthInitialBody(),
            ),
          ),
        ),
      ),
    );
  }
}
