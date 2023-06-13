import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/domain/entities/date_interval/date_interval.dart';
import '../../../core/domain/entities/trip/trip.dart';
import '../../../core/presentation/widgets/common/failure_body.dart';
import '../../../core/presentation/widgets/common/internet_listener.dart';
import '../../../core/presentation/widgets/common/loading_body.dart';
import '../../../core/presentation/widgets/dialogs/notification_dialog.dart';
import '../../../core/presentation/widgets/dialogs/review_dialog.dart';
import '../../../core/styles/styles.dart';
import 'cubit/request_cubit.dart';
import 'widgets/request_app_bar.dart';
import 'widgets/request_body.dart';

class RequestScreen extends StatelessWidget {
  final Trip trip;
  final DateInterval dateInterval;
  const RequestScreen({
    super.key,
    required this.trip,
    required this.dateInterval,
  });

  static const routeName = '/request';

  @override
  Widget build(BuildContext context) {
    return InternetListener(
      child: Scaffold(
        backgroundColor: kWhite,
        appBar: const RequestAppBar(),
        body: BlocConsumer<RequestCubit, RequestState>(
          listenWhen: (previous, current) => current.status.isSuccess,
          listener: (context, state) {
            Navigator.of(context).pop();
            Future.delayed(Duration.zero, () async {
              showDialog(
                context: context,
                builder: (context) => const ReviewDialog(),
              );
              showDialog(
                context: context,
                builder: (context) => const NotificationDialog(
                  title: 'Ваша заявка успешно отправлена',
                  description:
                      'Бронирование будет подтверждено\nв течении 24 часов',
                ),
              );
            });
          },
          builder: (context, state) {
            if (state.status.isLoading) {
              return const LoadingBody(
                color: kBlack,
              );
            }
            if (state.status.isFailure) {
              return FailureBody(
                onTap: () => context.read<RequestCubit>().refresh(),
                fault: state.fault,
                buttonText: 'Обновить',
                color: kBlack,
              );
            }
            return RequestBody(
              trip: trip,
              dateInterval: dateInterval,
              phoneNumber: state.phoneNumber,
              isPhoneNumberCorrect: state.isPhoneNumberCorrect,
            );
          },
        ),
      ),
    );
  }
}
