import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../core/domain/entities/date_interval/date_interval.dart';
import '../../../../core/domain/entities/trip/trip.dart';
import '../../../../core/presentation/animations/fade_animation_y_down.dart';
import '../../../../core/presentation/animations/fade_animation_y_up.dart';
import '../../../../core/presentation/widgets/bottom_sheet/scaffold_bottom_sheet.dart';
import '../../../../core/presentation/widgets/buttons/rounded_text_button.dart';
import '../../../../core/presentation/widgets/cards/request_card.dart';
import '../../../../core/presentation/widgets/common/comment_text_field.dart';
import '../../../../core/presentation/widgets/common/default_text_field.dart';
import '../../../../core/styles/styles.dart';
import '../../../../core/utils/popup_utils.dart';
import '../cubit/request_cubit.dart';

class RequestBody extends StatefulWidget {
  final Trip trip;
  final DateInterval dateInterval;
  final String phoneNumber;
  final bool isPhoneNumberCorrect;
  const RequestBody({
    super.key,
    required this.trip,
    required this.dateInterval,
    required this.phoneNumber,
    required this.isPhoneNumberCorrect,
  });

  @override
  State<RequestBody> createState() => _RequestBodyState();
}

class _RequestBodyState extends State<RequestBody> {
  late final TextEditingController _phoneController = TextEditingController()
    ..addListener(_phoneListener);
  late final FocusNode _phoneFocusNode = FocusNode();
  late final TextEditingController _commentController = TextEditingController()
    ..addListener(_commentListener);
  final _maskFormatter = MaskTextInputFormatter(
    mask: '+7 ### ## ## ###',
    filter: {'#': RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  _phoneListener() => context.read<RequestCubit>().phoneChange(
      phoneNumber: _phoneController.text,
      isPhoneNumberCorrect: _maskFormatter.isFill());

  _commentListener() =>
      context.read<RequestCubit>().commentChange(_commentController.text);

  @override
  void dispose() {
    _phoneController.dispose();
    _phoneFocusNode.dispose();
    _commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            children: [
              FadeAnimationYDown(
                delay: .7,
                child: RequestCard(
                  trip: widget.trip,
                  selectedInterval: widget.dateInterval,
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              FadeAnimationYDown(
                delay: .8,
                child: Text(
                  'Номер телефона',
                  style: kSFProDisplayRegular.copyWith(
                    color: kBlack50,
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              FadeAnimationYDown(
                delay: .9,
                child: DefaultTextField(
                  inputFormatters: [
                    _maskFormatter,
                  ],
                  controller: _phoneController,
                  focusNode: _phoneFocusNode,
                  isEmpty: widget.phoneNumber.isEmpty,
                  onClear: () {
                    _maskFormatter.clear();
                    _phoneController.clear();
                    _phoneFocusNode.requestFocus();
                  },
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              FadeAnimationYDown(
                delay: 1,
                child: Text(
                  'Комментарий',
                  style: kSFProDisplayRegular.copyWith(
                    color: kBlack50,
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              FadeAnimationYDown(
                delay: 1.1,
                child: DefaultTextField(
                  controller: _commentController,
                  isReadOnly: true,
                  onTap: () => PopupUtils.showMyBottomSheet(
                    context: context,
                    bottomSheet: ScaffoldBottomSheet(
                      title: 'Комментарий',
                      child: CommentTextField(
                        commentController: _commentController,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              FadeAnimationYDown(
                delay: 1.2,
                child: Text(
                  'Бронирование будет подтверждено\nв течении 24 часов',
                  style: kSFProDisplayRegular.copyWith(
                    color: kBlack,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
        FadeAnimationYUp(
          delay: 1.2,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: RoundedTextButton(
              isEnabled: widget.isPhoneNumberCorrect,
              text: 'Отправить заявку',
              onTap: () => context.read<RequestCubit>().sendRequest(),
            ),
          ),
        ),
      ],
    );
  }
}
