import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/auth/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel/features/auth/auth_cubit/cubit/auth_state.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:dalel/features/auth/presentation/widgets/terms_and_conditions_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CustomSignUpForm extends StatefulWidget {
  const CustomSignUpForm({super.key});

  @override
  State<CustomSignUpForm> createState() => _CustomSignUpFormState();
}

class _CustomSignUpFormState extends State<CustomSignUpForm> {
  bool? _passwordVisible;
  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);

    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
            key: authCubit.signUpFormKey,
            child: Column(
              children: [
                CustomTextFormField(
                    labelText: 'First Name',
                    onChanged: (firstName) {
                      authCubit.firstName = firstName;
                    }),
                CustomTextFormField(
                    labelText: 'Last Name',
                    onChanged: (lastName) {
                      authCubit.lastName = lastName;
                    }),
                CustomTextFormField(
                    labelText: 'E-mail Address',
                    onChanged: (emailAddress) {
                      authCubit.emailAddress = emailAddress;
                    }),
                CustomTextFormField(
                    obScureText: !_passwordVisible!,
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible!;
                          });
                        },
                        icon: const Icon(Icons.remove_red_eye)),
                    labelText: 'Password',
                    onChanged: (password) {
                      authCubit.password = password;
                    }),
                const TermsAndConditions(),
                Gap(77.h),
                CustomButton(
                  text: 'Sign Up',
                  onPressed: () {
                    if (authCubit.isCheckBoxValue == true) {
                      if (authCubit.signUpFormKey.currentState!.validate()) {
                        authCubit.signUpWithEmailAndPassword();
                      }
                    }
                  },
                ),
              ],
            ));
      },
    );
  }
}
