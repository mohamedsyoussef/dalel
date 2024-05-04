import 'package:dalel/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'widgets/custom_on_boarding.dart';
import 'widgets/custom_skip_button.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController(initialPage: 0);

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
              ),
              Gap(88.h),
              CustomButton(
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
