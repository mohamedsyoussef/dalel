import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Scaffold(
          body: Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Welcome !',
              style: CustomTextStyles.poppins600style28,
            ),
          ),
        ),
      ),
    );
  }
}
