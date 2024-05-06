import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/routes/routes.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../../../core/functions/navigation.dart';
import '../../../data/models/on_boarding_data.dart';

class GetButtons extends StatelessWidget {
  const GetButtons({
    super.key,
    required this.currentIndex,
    required this.controller,
  });
  final int currentIndex;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardingData.length - 1) {
      return Column(
        children: [
          CustomButton(
            text: 'Create Account',
            onPressed: () {
              CacheHelper()
                  .saveData(key: AppStrings.visitedOnBoardng, value: true);
              customReplacementNavigate(context, signUpScreen);

            },
          ),
          Gap(16.h),
          GestureDetector(
            onTap: () {
              CacheHelper()
                  .saveData(key: AppStrings.visitedOnBoardng, value: true);

              customReplacementNavigate(context, signInScreen);
            },
            child: Text(
              'Login Now',
              style: CustomTextStyles.poppins400style20,
            ),
          )
        ],
      );
    } else {
      return CustomButton(
        text: 'Next',
        onPressed: () {
          controller.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
        },
      );
    }
  }
}
