import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/auth/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel/features/auth/auth_cubit/cubit/auth_state.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:dalel/features/auth/presentation/widgets/terms_and_conditions_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
            child: Column(
          children: [
            CustomTextFormField(
                labelText: 'First Name',
                onChanged: (firstName) {
                  BlocProvider.of<AuthCubit>(context).firstName = firstName;
                }),
            CustomTextFormField(
                labelText: 'Last Name',
                onChanged: (lastName) {
                  BlocProvider.of<AuthCubit>(context).lastName = lastName;
                }),
            CustomTextFormField(
                labelText: 'E-mail Address',
                onChanged: (emailAddress) {
                  BlocProvider.of<AuthCubit>(context).emailAddress =
                      emailAddress;
                }),
            CustomTextFormField(
                labelText: 'Password',
                onChanged: (password) {
                  BlocProvider.of<AuthCubit>(context).password = password;
                }),
            const TermsAndConditions(),
            Gap(77.h),
            CustomButton(
              text: 'Sign Up',
              onPressed: () {
                BlocProvider.of<AuthCubit>(context)
                    .signUpWithEmailAndPassword();
              },
            ),
          ],
        ));
      },
    );
  }
}
