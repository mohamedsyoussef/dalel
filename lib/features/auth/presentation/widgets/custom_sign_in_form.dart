import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/routes/routes.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/auth/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel/features/auth/auth_cubit/cubit/auth_state.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CustomSignInForm extends StatelessWidget {
  const CustomSignInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final authCubit = BlocProvider.of<AuthCubit>(context);
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
          key: authCubit.signInFormKey,
          child: Column(
            children: [
              CustomTextFormField(
                labelText: 'E-mail Address',
                onChanged: (emailAddress) {
                  authCubit.emailAddress = emailAddress;
                },
              ),
              CustomTextFormField(
                obScureText: !authCubit.passwordVisible,
                suffixIcon: IconButton(
                  onPressed: () {
                    authCubit.togglePasswordVisibility();
                  },
                  icon: Icon(authCubit.passwordVisible
                      ? Icons.visibility_off
                      : Icons.visibility),
                ),
                labelText: 'Password',
                onChanged: (password) {
                  authCubit.password = password;
                },
              ),
              Gap(16.h),
              const ForgetPasswrodText(),
              Gap(132.h),
              state is SignUpLoadingState
                  ? CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    )
                  : CustomButton(
                      backgroundColor: AppColors.primaryColor,
                      text: 'Sign In',
                      onPressed: () async {
                        if (authCubit.signInFormKey.currentState!.validate()) {}
                      },
                    ),
            ],
          ),
        );
      },
    );
  }
}

class ForgetPasswrodText extends StatelessWidget {
  const ForgetPasswrodText({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        customNavigate(context, forgetPasswordScreen);
      },
      child: Padding(
        padding: EdgeInsets.only(right: 8.w),
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            'Forget Password?',
            style: CustomTextStyles.poppins600style12,
          ),
        ),
      ),
    );
  }
}
