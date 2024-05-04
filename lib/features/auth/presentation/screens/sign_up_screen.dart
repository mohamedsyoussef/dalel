import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Sign Up Screen',
        style: CustomTextStyles.poppins600style28,
      ),
    );
  }
}
