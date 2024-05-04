import 'package:dalel/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(AppStrings.skip),
          ],
        ),
      ),
    );
  }
}
