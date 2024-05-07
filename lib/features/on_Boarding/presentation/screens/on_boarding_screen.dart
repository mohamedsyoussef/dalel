import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/features/on_Boarding/functions/on_boarding_visited.dart';
import 'package:dalel/features/on_Boarding/presentation/screens/widgets/get_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
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
              CustomSkipButton(onTap: () {
                onBoardingVisited();
                customReplacementNavigate(context, signUpScreen);
              }),
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
              GetButtons(currentIndex: currentIndex, controller: _controller),
              Gap(17.h)
            ],
          ),
        ),
      ),
    );
  }
}
