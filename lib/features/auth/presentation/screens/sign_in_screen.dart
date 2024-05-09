import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_sign_in_form.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_welcome.dart';
import 'package:dalel/features/auth/presentation/widgets/have_account_widget.dart';
import 'package:dalel/features/auth/presentation/widgets/welcome_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/routes/routes.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: WelcomeBannerWidget()),
            SliverToBoxAdapter(child: Gap(32.h)),
            const SliverToBoxAdapter(
                child: CustomWelcomeWidget(text: 'Welcome Back!')),
            SliverToBoxAdapter(child: Gap(48.h)),
            const SliverToBoxAdapter(child: CustomSignInForm()),
            SliverToBoxAdapter(child: Gap(16.h)),
            SliverToBoxAdapter(
                child: CustomHaveAccount(
                    onTap: () =>
                        customReplacementNavigate(context, signUpScreen),
                    text1: 'don\'t have an account? ',
                    text2: 'Sign Up')),
            SliverToBoxAdapter(child: Gap(16.h)),
          ],
        ),
      ),
    );
  }
}
