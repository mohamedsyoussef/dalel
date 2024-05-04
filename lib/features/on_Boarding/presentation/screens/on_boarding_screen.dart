import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/on_Boarding/data/models/on_boarding_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/routes/routes.dart';
import 'widgets/custom_on_boarding.dart';
import 'widgets/custom_skip_button.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;
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
                pageController: _controller,
                onPageChanged: (index) {
                  setState(
                    () {
                      currentIndex = index;
                    },
                  );
                },
              ),
              Gap(88.h),
              currentIndex == onBoardingData.length - 1
                  ? Column(
                      children: [
                        CustomButton(
                          text: 'Create Account',
                          onPressed: () {
                            GoRouter.of(context).push(signUpScreen);
                          },
                        ),
                        Gap(16.h),
                        Text(
                          'Login Now',
                          style: CustomTextStyles.poppins400style20,
                        )
                      ],
                    )
                  : CustomButton(
                      text: 'Next',
                      onPressed: () {
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      },
                    ),
              Gap(17.h)
            ],
          ),
        ),
      ),
    );
  }
}
