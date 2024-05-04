import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/widgets.dart';

class CustomSkipButton extends StatelessWidget {
  const CustomSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {},
        child: Text(
          AppStrings.skip,
          style: CustomTextStyles.poppins300style16,
        ),
      ),
    );
  }
}
