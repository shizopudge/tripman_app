import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/data/local/internet/internet_cubit.dart';
import 'core/di/service_locator.dart';
import 'core/utils/app_router.dart';
import 'features/auth/presentation/cubit/auth_cubit.dart';

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (_) => getIt<InternetCubit>(),
        ),
        BlocProvider(
          lazy: false,
          create: (_) => getIt<AuthCubit>()..init(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: const ColorScheme.dark(),
          fontFamily: 'SF-Pro-Display',
          useMaterial3: true,
        ),
        onGenerateRoute: getIt<AppRouter>().onGenerateRoute,
      ),
    );
  }
}
