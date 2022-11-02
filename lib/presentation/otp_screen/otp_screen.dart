import 'package:flutter/material.dart';

import '../constant/color/colors.dart';
import '../constant/font/google_font.dart';
import '../constant/size/constant_size.dart';
import '../widget/otp_text_field/otp_text_field.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});

  static const String routeName = '/otp';
  static Route<OtpScreen> route() {
    return MaterialPageRoute<OtpScreen>(
      settings: const RouteSettings(name: routeName),
      builder: (_) => OtpScreen(),
    );
  }

  final TextEditingController _sampleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      appBar: AppBar(
        backgroundColor: appBgColor,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: appBlackColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  kHeight,
                  Text(
                    'Enter OTP.',
                    style: GoogleFont.headTextStyle,
                  ),
                  kHeight20,
                  Center(child: Image.asset('assets/images/otp.png')),
                ],
              ),
              kHeight,
              Column(
                children: <Widget>[
                  Text(
                    'A 4 Digit code has been sent to',
                    style: GoogleFont.subHeadTextStyle,
                  ),
                  Text(
                    '+91 9087654321',
                    style: GoogleFont.otpTextStyle,
                  ),
                  kHeight10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      OtpTextField(
                        isFocused: true,
                        controller: _sampleController,
                      ),
                      OtpTextField(
                        controller: _sampleController,
                      ),
                      OtpTextField(
                        controller: _sampleController,
                      ),
                      OtpTextField(
                        controller: _sampleController,
                      ),
                    ],
                  ),
                  kHeight,
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
