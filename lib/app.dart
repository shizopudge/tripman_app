import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'core/di/service_locator.dart';
import 'core/logic/internet/internet_cubit.dart';
import 'core/styles/styles.dart';
import 'core/utils/app_router.dart';
import 'core/utils/popup_utils.dart';

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
      ],
      child: BlocListener<InternetCubit, InternetState>(
        listener: (context, state) => state.whenOrNull(
          disconnected: () => PopupUtils.showGlobalSnackBar(
            context: context,
            messageText: const Text(
              'Нет соединения с интернетом.',
              style: kSFProDisplayMedium,
            ),
            icon: const Icon(
              Icons.wifi_off,
              color: kWhite,
            ),
            color: kRed,
          ),
          connected: () => Get.closeCurrentSnackbar(),
        ),
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: const ColorScheme.dark(),
            fontFamily: 'SF-Pro-Display',
            useMaterial3: true,
          ),
          onGenerateRoute: getIt<AppRouter>().onGenerateRoute,
        ),
      ),
    );
  }
}
