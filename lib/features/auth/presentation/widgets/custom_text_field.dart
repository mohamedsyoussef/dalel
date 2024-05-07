import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.labelText, this.obScureText});
  final String labelText;
  final bool? obScureText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.w, right: 8.w, top: 24.h),
      child: TextField(
        obscureText: obScureText ?? false,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: CustomTextStyles.poppins500style12,
          border: _getBoarderStyle(),
          enabledBorder: _getBoarderStyle(),
          focusedBorder: _getBoarderStyle(),
        ),
      ),
    );
  }
}

OutlineInputBorder _getBoarderStyle() {
  return OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.grey),
      borderRadius: BorderRadius.circular(4.r));
}
