import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'This is forget Password Screen',
        style: CustomTextStyles.poppins400style20,
      )),
    );
  }
}
