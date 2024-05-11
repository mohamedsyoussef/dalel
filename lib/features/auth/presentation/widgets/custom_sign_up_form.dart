import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/functions/show_toast.dart';
import 'package:dalel/core/routes/routes.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/auth/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel/features/auth/auth_cubit/cubit/auth_state.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:dalel/features/auth/presentation/widgets/terms_and_conditions_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final authCubit = BlocProvider.of<AuthCubit>(context);
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignUpSuccessState) {
          customShowToast(msg: 'Sign Up Success!');
          customReplacementNavigate(context, homeScreen);
        }
        if (state is SignUpFailureState) {
          Fluttertoast.showToast(
            msg: state.errorMessage,
          );
        }
      },
      builder: (context, state) {
        return Form(
          key: authCubit.signUpFormKey,
          child: Column(
            children: [
              CustomTextFormField(
                labelText: 'First Name',
                onChanged: (firstName) {
                  authCubit.firstName = firstName;
                },
              ),
              CustomTextFormField(
                labelText: 'Last Name',
                onChanged: (lastName) {
                  authCubit.lastName = lastName;
                },
              ),
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
              const TermsAndConditions(),
              Gap(77.h),
              state is SignUpLoadingState
                  ? CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    )
                  : CustomButton(
                      backgroundColor:
                          BlocProvider.of<AuthCubit>(context).isCheckBoxValue!
                              ? AppColors.primaryColor
                              : AppColors.grey,
                      text: 'Sign Up',
                      onPressed: () async {
                        if (authCubit.isCheckBoxValue == true) {
                          if (authCubit.signUpFormKey.currentState!
                              .validate()) {
                            await authCubit.signUpWithEmailAndPassword();
                          }
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
