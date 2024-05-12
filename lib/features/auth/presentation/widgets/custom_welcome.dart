import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomWelcomeWidget extends StatelessWidget {
  const CustomWelcomeWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text(
        text,
        style: CustomTextStyles.poppins600style28,
      ),
    );
  }
}
