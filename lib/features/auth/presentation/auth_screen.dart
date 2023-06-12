import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/styles/styles.dart';
import 'cubit/auth_cubit.dart';
import 'widgets/auth_failure_body.dart';
import 'widgets/auth_initial_body.dart';
import 'widgets/auth_loaded_body.dart';
import 'widgets/auth_loading_body.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            loaded: () => const AuthLoadedBody(),
            loading: () => const AuthLoadingBody(),
            failure: (fault) => AuthFailureBody(fault: fault),
            orElse: () => const AuthInitialBody(),
          ),
        ),
      ),
    );
  }
}
