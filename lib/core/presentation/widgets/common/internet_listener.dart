import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/local/internet/internet_cubit.dart';
import '../../../di/service_locator.dart';
import '../../../styles/styles.dart';
import '../../../utils/popup_utils.dart';

class InternetListener extends StatefulWidget {
  final Widget child;
  const InternetListener({super.key, required this.child});

  @override
  State<InternetListener> createState() => _InternetListenerState();
}

class _InternetListenerState extends State<InternetListener> {
  @override
  void initState() {
    super.initState();
    getIt<InternetCubit>().checkInternetConnection();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<InternetCubit, InternetState>(
      listener: (context, state) => state.whenOrNull(
        disconnected: () {
          ScaffoldMessenger.of(context).clearSnackBars();
          return PopupUtils.showSnackBarMessage(
            context: context,
            backgroundColor: kRed,
            iconColor: kWhite,
            duration: const Duration(days: 1),
            iconPath: 'assets/icons/network.svg',
            text: 'Вы не подключены к интернету.',
          );
        },
        connected: () => ScaffoldMessenger.of(context).clearSnackBars(),
      ),
      child: widget.child,
    );
  }
}
