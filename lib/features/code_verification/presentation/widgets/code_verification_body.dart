import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/presentation/animations/fade_animation_y_down.dart';
import '../../../../core/presentation/widgets/buttons/rounded_border_button.dart';
import '../../../../core/styles/styles.dart';
import '../../../../core/utils/popup_utils.dart';
import '../../../auth/presentation/cubit/auth_cubit.dart';
import '../../../sms_sender/presentation/cubit/sms_sender_cubit.dart';
import '../cubit/code_verification_cubit.dart';
import 'sms_code_field.dart';

class CodeVerificationBody extends StatefulWidget {
  const CodeVerificationBody({
    super.key,
  });

  @override
  State<CodeVerificationBody> createState() => _CodeVerificationBodyState();
}

class _CodeVerificationBodyState extends State<CodeVerificationBody> {
  late final TextEditingController _smsCodeController = TextEditingController()
    ..addListener(_smsCodeListener);
  late final FocusNode _smsCodeFocus = FocusNode()..requestFocus();

  void _smsCodeListener() => context
      .read<CodeVerificationCubit>()
      .smsCodeChange(_smsCodeController.text);

  @override
  void dispose() {
    _smsCodeController.dispose();
    _smsCodeFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<CodeVerificationCubit, CodeVerificationState>(
          listenWhen: (previous, current) => current.status.isConfirmed,
          listener: (context, state) {
            if (state.status.isConfirmed) {
              _smsCodeFocus.unfocus();
              context.read<SmsSenderCubit>().refresh();
              context.read<AuthCubit>().loginByPhone();
              Navigator.of(context).pushNamedAndRemoveUntil('/', (_) => false);
              context.read<CodeVerificationCubit>().close();
            }
          },
        ),
        BlocListener<SmsSenderCubit, SmsSenderState>(
          listener: (context, state) {
            if (state.status.isFailure) {
              PopupUtils.showSnackBarMessage(
                context: context,
                backgroundColor: kRed,
                iconColor: kWhite,
                iconPath: 'assets/icons/error.svg',
                text: state.fault.message,
              );
            }
          },
        ),
      ],
      child: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 23,
                      ),
                      FadeAnimationYDown(
                        delay: .3,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Text(
                            'Введите код подтверждения полученный по СМС',
                            style: kSFProDisplayRegular.copyWith(
                              color: kBlack,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      BlocBuilder<CodeVerificationCubit, CodeVerificationState>(
                        builder: (context, state) {
                          return FadeAnimationYDown(
                            delay: .4,
                            child: SmsCodeField(
                              isIncorrectCode: state.status.isIncorrect,
                              padding: state.smsCode.isEmpty
                                  ? const EdgeInsets.symmetric(horizontal: 48)
                                  : state.smsCode.length < 4
                                      ? const EdgeInsets.only(
                                          left: 21,
                                          right: 48,
                                        )
                                      : const EdgeInsets.symmetric(
                                          horizontal: 21),
                              codeFocus: _smsCodeFocus,
                              codeController: _smsCodeController,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Column(
                      children: [
                        BlocBuilder<CodeVerificationCubit,
                            CodeVerificationState>(
                          builder: (context, state) {
                            return FadeAnimationYDown(
                              delay: .5,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: state.secondsBeforeNextCode > 0
                                    ? RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          text: 'Отправить код повторно ',
                                          style: kSFProDisplayMedium.copyWith(
                                            fontSize: 16,
                                            color: kBlack50,
                                          ),
                                          children: [
                                            TextSpan(
                                              text:
                                                  '${state.secondsBeforeNextCode} сек.',
                                              style:
                                                  kSFProDisplayMedium.copyWith(
                                                fontSize: 16,
                                                color: kBlack,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    : RoundedBorderButton(
                                        onTap: () => context
                                            .read<CodeVerificationCubit>()
                                            .sendVerificationCodeAgain(),
                                        borderColor: kBlack.withOpacity(
                                          .2,
                                        ),
                                        children: [
                                          Text(
                                            'Отправить код повторно',
                                            style: kSFProDisplayMedium.copyWith(
                                              fontSize: 16,
                                              color: kBlack,
                                            ),
                                          ),
                                        ],
                                      ),
                              ),
                            );
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
