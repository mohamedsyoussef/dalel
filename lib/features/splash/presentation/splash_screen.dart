import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/routes/routes.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //check if the user already visited on boarding screen beofre
    bool isVisited =
        getIt<CacheHelper>().getData(key: AppStrings.visitedOnBoardng) ?? false;
    if (isVisited == true) {
      delayedNavigate(context, navigationPath: signUpScreen);
    } else {
      delayedNavigate(context, navigationPath: onBoardingScreen);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.offWhite,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Dalel', style: CustomTextStyles.pacifico400style64),
              Gap(20.h),
              CircularProgressIndicator(
                color: AppColors.primaryColor,
              )
            ],
          ),
        ));
  }

  void delayedNavigate(context, {String? navigationPath}) {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        customReplacementNavigate(context, navigationPath!);
      },
    );
  }
}
