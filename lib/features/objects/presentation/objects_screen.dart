import 'package:flutter/material.dart';

import '../../../core/error/failures/fault.dart';
import '../../../core/presentation/widgets/common/failure_body.dart';
import '../../../core/presentation/widgets/common/internet_listener.dart';
import '../../../core/styles/styles.dart';
import 'widgets/objects_app_bar.dart';

class ObjectsScreen extends StatelessWidget {
  const ObjectsScreen({super.key});

  static const routeName = '/objects';

  @override
  Widget build(BuildContext context) {
    return InternetListener(
      child: Scaffold(
        backgroundColor: kWhite,
        appBar: const ObjectsAppBar(),
        body: FailureBody(
          onTap: () => Navigator.of(context).pop(),
          fault: const Fault.unknown(),
          color: kBlack,
          buttonText: 'На главную',
        ),
      ),
    );
  }
}
