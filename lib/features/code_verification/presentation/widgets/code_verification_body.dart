import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/code_verification_cubit.dart';

class CodeVerificationBody extends StatefulWidget {
  final String phoneNumber;
  const CodeVerificationBody({
    super.key,
    required this.phoneNumber,
  });

  @override
  State<CodeVerificationBody> createState() => _CodeVerificationBodyState();
}

class _CodeVerificationBodyState extends State<CodeVerificationBody> {
  late final TextEditingController _smsCodeController = TextEditingController()
    ..addListener(_smsCodeListener);

  void _smsCodeListener() {}

  @override
  void dispose() {
    _smsCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(widget.phoneNumber),
          BlocBuilder<CodeVerificationCubit, CodeVerificationState>(
            builder: (context, state) {
              return Text(state.secondsBeforeNextCode.toString());
            },
          ),
          TextButton(
            onPressed: () {
              context.read<CodeVerificationCubit>().restartTimer();
            },
            child: const Text('Restart timer'),
          ),
        ],
      ),
    );
  }
}
