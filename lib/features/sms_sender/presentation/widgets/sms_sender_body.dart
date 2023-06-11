import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../code_verification/presentation/code_verification_screen.dart';
import '../cubit/sms_sender_cubit.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../core/domain/entities/code_confirmation_screen_params/code_confiramtion_screen_params.dart';
import '../../../../core/presentation/animations/fade_animation_y_down.dart';
import '../../../../core/presentation/widgets/buttons/rounded_text_button.dart';
import '../../../../core/presentation/widgets/common/default_text_field.dart';
import '../../../../core/presentation/widgets/text/notice.dart';
import '../../../../core/styles/styles.dart';

class SmsSenderBody extends StatefulWidget {
  const SmsSenderBody({super.key});

  @override
  State<SmsSenderBody> createState() => _SmsSenderBodyState();
}

class _SmsSenderBodyState extends State<SmsSenderBody> {
  late final TextEditingController _phoneController = TextEditingController()
    ..addListener(_phoneListener);
  late final FocusNode _phoneFocusNode = FocusNode()..requestFocus();
  final _maskFormatter = MaskTextInputFormatter(
    mask: '+7 ### ## ## ###',
    filter: {'#': RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  @override
  void dispose() {
    _phoneController.dispose();
    _phoneFocusNode.dispose();
    super.dispose();
  }

  void _phoneListener() => context.read<SmsSenderCubit>().phoneChange(
        phoneNumber: _phoneController.text,
        isValidated: _maskFormatter.isFill(),
      );

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraints.maxHeight),
          child: IntrinsicHeight(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    FadeAnimationYDown(
                      delay: .7,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Text(
                          'Для использования приложения пожалуйста укажите ваш номер телефона',
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
                    FadeAnimationYDown(
                      delay: .8,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 21,
                          right: 19,
                        ),
                        child: Text(
                          'Номер телефона',
                          style: kSFProDisplayRegular.copyWith(
                            color: kBlack50,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    FadeAnimationYDown(
                      delay: .9,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 21,
                          right: 19,
                        ),
                        child: BlocBuilder<SmsSenderCubit, SmsSenderState>(
                          builder: (context, state) {
                            return DefaultTextField(
                              inputFormatters: [
                                _maskFormatter,
                              ],
                              onClear: () {
                                _maskFormatter.clear();
                                _phoneController.clear();
                                context.read<SmsSenderCubit>().clearPhone();
                                _phoneFocusNode.requestFocus();
                              },
                              controller: _phoneController,
                              focusNode: _phoneFocusNode,
                              isEmpty: state.phoneNumber.isEmpty,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Column(
                    children: [
                      FadeAnimationYDown(
                        delay: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: BlocBuilder<SmsSenderCubit, SmsSenderState>(
                            builder: (context, state) {
                              return RoundedTextButton(
                                isEnabled: state.isCorrect,
                                onTap: () {
                                  context
                                      .read<SmsSenderCubit>()
                                      .sendVerificationCode();
                                  Navigator.of(context).pushNamed(
                                    CodeVerificationScreen.routeName,
                                    arguments: CodeVerificationScreenParams(
                                      state.phoneNumber,
                                    ),
                                  );
                                },
                                text: 'Подтвердить номер',
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const FadeAnimationYDown(
                        delay: 1.1,
                        child: Notice(),
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
    );
  }
}
