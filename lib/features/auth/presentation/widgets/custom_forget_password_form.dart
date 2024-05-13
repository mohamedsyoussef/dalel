import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/functions/show_toast.dart';
import 'package:dalel/core/routes/routes.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/auth/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel/features/auth/auth_cubit/cubit/auth_state.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CustomForgetPasswordForm extends StatelessWidget {
  const CustomForgetPasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final authCubit = BlocProvider.of<AuthCubit>(context);
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is ForgotPasswordSuccessState) {
          customShowToast(msg: "Rest Password Link Sent To Your Email");
          customReplacementNavigate(context, signInScreen);
        }
        if (state is ForgetPasswordFailureState) {
          customShowToast(
            msg: state.errorMessage,
          );
        }
      },
      builder: (context, state) {
        return Form(
          key: authCubit.forgotPasswordKey,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: CustomTextFormField(
                  labelText: 'E-mail Address',
                  onChanged: (emailAddress) {
                    authCubit.emailAddress = emailAddress;
                  },
                ),
              ),
              Gap(129.h),
              State is ForgotPasswordLoadingState
                  ? CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    )
                  : CustomButton(
                      backgroundColor: AppColors.primaryColor,
                      text: 'Send Reset Password Link',
                      onPressed: () async {
                        if (authCubit.forgotPasswordKey.currentState!
                            .validate()) {
                          await authCubit.resetPasswordLink();
                        }
                      },
                    ),
            ],
          ),
        );
      },
    );
  }
}
