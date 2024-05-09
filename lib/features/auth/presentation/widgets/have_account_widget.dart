import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomHaveAccount extends StatelessWidget {
  const CustomHaveAccount(
      {super.key,
      required this.text1,
      required this.text2,
      required this.onTap});
  final String text1, text2;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Text.rich(
          TextSpan(
            text: text1,
            style: CustomTextStyles.poppins400style12,
            children: [
              TextSpan(
                text: text2,
                style: CustomTextStyles.poppins500style12
                    .copyWith(decoration: TextDecoration.underline),
              )
            ],
          ),
        ),
      ),
    );
  }
}
