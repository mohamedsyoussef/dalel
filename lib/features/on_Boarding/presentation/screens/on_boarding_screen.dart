import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/core/widgets/custome_button.dart';
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
        body: Column(
          children: [
            Gap(40.h),
            const CustomSkipButton(),
            CustomOnBoardingBody(
              image: Image.asset(Assets.assetsImagesOnboarding1),
              title: 'Explore The history with\n Dalel in a smart way',
              subTitle:
                  'Using our app’s history libraries\n you can find many historical periods ',
            ),
            const CustomButton(),
            Gap(17.h)
          ],
        ),
      ),
    );
  }
}
