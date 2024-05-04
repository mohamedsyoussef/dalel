import 'package:dalel/core/utils/app_assets.dart';
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
              CustomOnBoardingBody(
                image: Image.asset(Assets.assetsImagesOnboarding1),
                title: 'Explore The history with Dalel in a smart way',
                subTitle:
                    'Using our app’s history libraries you can find many historical periods ',
              ),
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
