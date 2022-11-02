import 'package:flutter/material.dart';

class OtpTextField extends StatelessWidget {
  const OtpTextField({
    super.key,
    this.isFocused = false,
    required this.controller,
  });

  final bool isFocused;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.shortestSide * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200,
      ),
      child: AspectRatio(
        aspectRatio: 0.7,
        child: Center(
          child: TextField(
            autofocus: true,
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
          ),
        ),
      ),
    );
  }
}
