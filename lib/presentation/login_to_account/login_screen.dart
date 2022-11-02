import 'package:flutter/material.dart';

import '../constant/font/google_font.dart';
import '../constant/size/constant_size.dart';

import '../widget/eleveted_button_widget/elevated_button_widget.dart';
import '../widget/text_field_widget/text_field_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  static const String routeName = '/login';
  static Route<LoginScreen> route() {
    return MaterialPageRoute<LoginScreen>(
      settings: const RouteSettings(name: routeName),
      builder: (_) => LoginScreen(),
    );
  }

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Login to Account.',
                  style: GoogleFont.headTextStyle,
                ),
                Text(
                  'Login with your Username & Password',
                  style: GoogleFont.subHeadTextStyle,
                ),
                kHeight50,
                Image.asset(
                  'assets/images/login_account.png',
                  height: 250,
                ),
                kHeight20,
                TextFieldWidget(
                  controller: usernameController,
                  hintText: 'Username',
                ),
                TextFieldWidget(
                  controller: passwordController,
                  hintText: 'Password',
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/forgot'),
                    child: Text(
                      'Forgot Password',
                      style: GoogleFont.textButtonStyle,
                    ),
                  ),
                ),
                kHeight20,
                Center(
                  child: ElvatedButtonWidget(
                    buttonText: 'Log In',
                    onpressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Don't have an account?",
                      style: GoogleFont.subHeadTextStyle,
                    ),
                    TextButton(
                      onPressed: () => Navigator.pushNamed(context, '/signup'),
                      child: Text(
                        'Sign Up',
                        style: GoogleFont.textButtonStyle,
                      ),
                    )
                  ],
                ),
                kHeight,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
