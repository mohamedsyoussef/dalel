import 'package:dalel/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'widgets/custom_on_boarding.dart';
import 'widgets/custom_skip_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.h),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Gap(40.h),
              const CustomSkipButton(),
              CustomOnBoardingBody(),
              Gap(88.h),
              const CustomButton(
                text: 'Next',
              ),
              Gap(17.h)
            ],
          ),
        ),
      ),
    );
  }
}
