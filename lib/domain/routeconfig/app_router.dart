import 'dart:developer';

import 'package:flutter/material.dart';

import '../../presentation/forgot_password/forgotpassword_screen.dart';
import '../../presentation/home/home_screen.dart';
import '../../presentation/introduction_screen.dart/introduction_screen.dart';
import '../../presentation/login_to_account/login_screen.dart';
import '../../presentation/otp_screen/otp_screen.dart';
import '../../presentation/signup_screen/signup_screen.dart';
import '../../presentation/splash/splash_screen.dart';

class AppRoute {
  static Route<Widget> onGenerateRoute(RouteSettings settings) {
    log('Route page to ${settings.name}');
    switch (settings.name) {
      case '/':
        return SplashScreen.route();
      case IntroductionScreen.routeName:
        return IntroductionScreen.route();
      case LoginScreen.routeName:
        return LoginScreen.route();
      case SignupScreen.routeName:
        return SignupScreen.route();
      case OtpScreen.routeName:
        return OtpScreen.route();
      case ForgotPasswordScreen.routeName:
        return ForgotPasswordScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route<Scaffold> _errorRoute() {
    return MaterialPageRoute<Scaffold>(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => const Scaffold(
        body: Center(
          child: Text('Error Router'),
        ),
      ),
    );
  }
}
