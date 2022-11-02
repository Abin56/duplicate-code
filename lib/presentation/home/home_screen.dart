import 'package:flutter/material.dart';

import '../constant/color/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String routeName = '/home';
  static Route<HomeScreen> route() {
    return MaterialPageRoute<HomeScreen>(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      appBar: AppBar(
        backgroundColor: appMainColor,
        title: const Text(
          'Queue',
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('HomeScreen'),
      ),
    );
  }
}
