import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/features/auth/auth_cubit/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomCheckBox(),
        Text.rich(
          TextSpan(
            text: 'I have agree to our ',
            style: CustomTextStyles.poppins400style12,
            children: [
              TextSpan(
                text: 'Terms and Condition',
                style: CustomTextStyles.poppins500style12
                    .copyWith(decoration: TextDecoration.underline),
              )
            ],
          ),
        )
      ],
    );
  }
}

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: isChecked,
        
        onChanged: (onChanged) {
          setState(() {
            isChecked = onChanged!;
            BlocProvider.of<AuthCubit>(context).checkBoxValueChecker(
              newValue: isChecked,
            );
          });
        });
  }
}
