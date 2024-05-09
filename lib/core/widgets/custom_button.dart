import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.backgroundColor,
  });
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        minimumSize: Size(343.w, 56.h),
        backgroundColor: backgroundColor,
      ),
      child: Text(
        text,
        style: CustomTextStyles.poppins500style18.copyWith(color: Colors.white),
      ),
    );
  }
}
