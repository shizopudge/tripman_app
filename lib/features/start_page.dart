import 'package:flutter/material.dart';

import '../core/presentation/animations/fade_animation_y_down.dart';
import '../core/presentation/widgets/text/logo.dart';
import '../core/styles/styles.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  void initState() {
    Future.delayed(
      const Duration(
        milliseconds: 2500,
      ),
      () => Navigator.of(context).pushNamed(
        '/home',
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kBlack,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeAnimationYDown(
                key: UniqueKey(),
                delay: 1,
                child: const Logo(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
