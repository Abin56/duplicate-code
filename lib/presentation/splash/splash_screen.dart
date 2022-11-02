import 'dart:async';

import 'package:flutter/material.dart';

import '../constant/color/colors.dart';
import '../constant/font/google_font.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const String routeName = '/';
  static Route<SplashScreen> route() {
    return MaterialPageRoute<SplashScreen>(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const SplashScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {

    //Navigator.pushReplacementNamed(context, '/login')
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(context, '/introduction')
    );
    return Scaffold(
      backgroundColor: appMainColor,
      body: SafeArea(
        child: Center(
          child: Text(
            'Queue',
            style: GoogleFont.style,
          ),
        ),
      ),
    );
  }
}
