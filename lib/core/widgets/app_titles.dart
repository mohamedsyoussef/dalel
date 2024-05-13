import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTitles extends StatelessWidget {
  const AppTitles({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: CustomTextStyles.poppins400style12
          .copyWith(fontSize: 20.sp, color: const Color(0xFF6B4B3E)),
    );
  }
}
