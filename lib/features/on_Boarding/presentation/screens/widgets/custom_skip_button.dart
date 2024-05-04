import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSkipButton extends StatelessWidget {
  const CustomSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(right: 16.w),
        child: GestureDetector(
          onTap: () {},
          child: Text(
            AppStrings.skip,
            style: CustomTextStyles.poppins300style16,
          ),
        ),
      ),
    );
  }
}
