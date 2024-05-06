import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool visitedChecker =
        CacheHelper().getData(key: AppStrings.visitedOnBoardng);
    Logger().i('visitedCheker $visitedChecker');

    return Center(
      child: SafeArea(
        child: Scaffold(
          body: Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Welcome !',
              style: CustomTextStyles.poppins600style28,
            ),
          ),
        ),
      ),
    );
  }
}
