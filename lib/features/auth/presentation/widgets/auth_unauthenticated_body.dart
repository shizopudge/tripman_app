import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/presentation/animations/fade_animation_y_down.dart';
import '../../../../core/presentation/animations/fade_animation_y_up.dart';
import '../../../../core/presentation/widgets/buttons/rounded_border_button.dart';
import '../../../../core/presentation/widgets/text/logo.dart';
import '../../../../core/presentation/widgets/text/notice.dart';
import '../../../../core/styles/styles.dart';
import '../../../sms_sender/presentation/sms_sender_screen.dart';
import '../cubit/auth_cubit.dart';

class AuthUnauthenticatedBody extends StatelessWidget {
  const AuthUnauthenticatedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Spacer(),
          FadeAnimationYDown(
            key: UniqueKey(),
            delay: 0,
            child: const Logo(),
          ),
          const Spacer(),
          FadeAnimationYUp(
            delay: .25,
            child: Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: Column(
                children: [
                  RoundedBorderButton(
                    onTap: () => Navigator.of(context).pushNamed(
                      SmsSenderScreen.routeName,
                    ),
                    borderColor: kBlack.withOpacity(.2),
                    margin: const EdgeInsets.only(
                      bottom: 20,
                    ),
                    children: [
                      SvgPicture.asset(
                        'assets/icons/phone.svg',
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      Flexible(
                        child: Text(
                          'Войти по номеру телефона',
                          overflow: TextOverflow.ellipsis,
                          style: kSFProDisplayMedium.copyWith(
                            fontSize: 16,
                            color: kBlack,
                          ),
                        ),
                      ),
                    ],
                  ),
                  RoundedBorderButton(
                    onTap: () => context.read<AuthCubit>().loginByGoogle(),
                    borderColor: kBlack.withOpacity(.2),
                    margin: const EdgeInsets.only(
                      bottom: 20,
                    ),
                    children: [
                      SvgPicture.asset(
                        'assets/icons/google.svg',
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      Flexible(
                        child: Text(
                          'Войти через Google',
                          overflow: TextOverflow.ellipsis,
                          style: kSFProDisplayMedium.copyWith(
                            fontSize: 16,
                            color: kBlack,
                          ),
                        ),
                      ),
                    ],
                  ),
                  RoundedBorderButton(
                    onTap: () => context.read<AuthCubit>().loginByApple(),
                    backgroundColor: kBlack,
                    borderColor: kBlack,
                    margin: const EdgeInsets.only(
                      bottom: 20,
                    ),
                    children: [
                      SvgPicture.asset(
                        'assets/icons/apple.svg',
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      Flexible(
                        child: Text(
                          'Войти через Apple',
                          overflow: TextOverflow.ellipsis,
                          style: kSFProDisplayMedium.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Notice(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
