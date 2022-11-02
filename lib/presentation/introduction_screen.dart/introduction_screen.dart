import 'package:flutter/material.dart';

import '../constant/color/colors.dart';


import '../widget/eleveted_button_widget/elevated_button_widget.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  static const String routeName = '/introduction';
  static Route<IntroductionScreen> route() {
    return MaterialPageRoute<IntroductionScreen>(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const IntroductionScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset('assets/images/queueIntro.png'),
              ElvatedButtonWidget(
                buttonText: 'Get Started',
                onpressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
