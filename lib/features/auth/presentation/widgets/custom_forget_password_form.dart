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
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
          key: authCubit.forgetPasswordKey,
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
              CustomButton(
                backgroundColor: AppColors.primaryColor,
                text: 'Send Verfication Code',
                onPressed: () async {
                  if (authCubit.forgetPasswordKey.currentState!.validate()) {}
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
