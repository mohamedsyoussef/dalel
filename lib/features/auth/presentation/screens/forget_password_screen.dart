import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_forget_password_form.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Gap(64.h),
            const CustomWelcomeWidget(
              text: 'Forgot Password',
            ),
            Gap(40.h),
            SizedBox(
              width: 235.w,
              height: 235.h,
              child: Image.asset(Assets.assetsImagesForgetPassword),
            ),
            Gap(24.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 34.w),
              child: Text(
                'Enter your registered email below to receive password reset instruction',
                textAlign: TextAlign.center,
                style: CustomTextStyles.poppins400style12
                    .copyWith(fontSize: 14.sp),
              ),
            ),
            Gap(41.h),
            const CustomForgetPasswordForm(),
          ],
        ),
      ),
    );
  }
}
