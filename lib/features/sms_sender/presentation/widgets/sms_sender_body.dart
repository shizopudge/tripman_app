import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../core/presentation/animations/fade_animation_y_down.dart';
import '../../../../core/presentation/widgets/buttons/rounded_text_button.dart';
import '../../../../core/presentation/widgets/common/default_text_field.dart';
import '../../../../core/presentation/widgets/text/notice.dart';
import '../../../../core/styles/styles.dart';
import '../cubit/sms_sender_cubit.dart';

class SmsSenderBody extends StatefulWidget {
  final String phoneNumber;
  final bool isCorrect;
  const SmsSenderBody({
    super.key,
    required this.phoneNumber,
    required this.isCorrect,
  });

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
    _phoneController.removeListener(_phoneListener);
    _phoneController.dispose();
    _phoneFocusNode.dispose();
    super.dispose();
  }

  void _phoneListener() => context.read<SmsSenderCubit>().phoneChange(
        phoneNumber: _phoneController.text,
        isCorrect: _maskFormatter.isFill(),
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
                      delay: .3,
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
                      delay: .4,
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
                      delay: .5,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 21,
                          right: 19,
                        ),
                        child: DefaultTextField(
                          inputFormatters: [
                            _maskFormatter,
                          ],
                          onClear: () {
                            _maskFormatter.clear();
                            _phoneController.clear();
                            _phoneFocusNode.requestFocus();
                          },
                          controller: _phoneController,
                          focusNode: _phoneFocusNode,
                          isEmpty: widget.phoneNumber.isEmpty,
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
                        delay: .6,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: RoundedTextButton(
                            isEnabled: widget.isCorrect,
                            onTap: () => context
                                .read<SmsSenderCubit>()
                                .sendVerificationCode(),
                            text: 'Подтвердить номер',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const FadeAnimationYDown(
                        delay: .7,
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
