import 'package:dalel/features/auth/presentation/widgets/custom_sign_up_form.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_welcome.dart';
import 'package:dalel/features/auth/presentation/widgets/have_account_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.h),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: Gap(108.h)),
                const SliverToBoxAdapter(
                    child: CustomWelcomeWidget(text: 'Welcome!')),
                SliverToBoxAdapter(child: Gap(40.h)),
                const SliverToBoxAdapter(child: CustomSignUpForm()),
                SliverToBoxAdapter(child: Gap(16.h)),
                SliverToBoxAdapter(child: Gap(16.h)),
                const SliverToBoxAdapter(
                    child: CustomHaveAccount(
                        text1: 'Already have an account? ', text2: 'Sign In'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
