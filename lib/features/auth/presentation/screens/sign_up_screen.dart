import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_welcome.dart';
import 'package:dalel/features/auth/presentation/widgets/terms_and_conditions_widget.dart';
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
                SliverToBoxAdapter(
                    child: CustomTextField(labelText: 'First Name')),
                SliverToBoxAdapter(
                    child: CustomTextField(labelText: 'Lat Name')),
                SliverToBoxAdapter(
                    child: CustomTextField(labelText: 'E-mail Address')),
                SliverToBoxAdapter(
                    child: CustomTextField(labelText: 'Password')),
                SliverToBoxAdapter(child: Gap(16.h)),
                const SliverToBoxAdapter(child: TermsAndConditions()),
                SliverToBoxAdapter(child: Gap(77.h)),
                SliverToBoxAdapter(
                  child: CustomButton(
                    text: 'Sign Up',
                    onPressed: () {},
                  ),
                ),
                SliverToBoxAdapter(child: Gap(16.h)),
                const SliverToBoxAdapter(
                  child: CustomHaveAccount(
                    text1: 'Already have an account? ',
                    text2: 'Sign In',
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomHaveAccount extends StatelessWidget {
  const CustomHaveAccount(
      {super.key, required this.text1, required this.text2});
  final String text1, text2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(
          text: text1,
          style: CustomTextStyles.poppins400style12,
          children: [
            TextSpan(
              text: text2,
              style: CustomTextStyles.poppins500style12
                  .copyWith(decoration: TextDecoration.underline),
            )
          ],
        ),
      ),
    );
  }
}
