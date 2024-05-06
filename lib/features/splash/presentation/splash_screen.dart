import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/routes/routes.dart';
import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //check if the user already visited on boarding screen beofre
    delayedNavigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.offWhite,
        body: Center(
          child: Text('Dalel', style: CustomTextStyles.pacifico400style64),
        ));
  }

  void delayedNavigate() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        customReplacementNavigate(context, onBoardingScreen);
      },
    );
  }
}
