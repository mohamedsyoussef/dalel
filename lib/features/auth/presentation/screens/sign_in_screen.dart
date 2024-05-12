import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/routes/routes.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              customReplacementNavigate(context, signUpScreen);
            },
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: Center(
          child: Text(
        'Sign In Screen',
        style: CustomTextStyles.pacifico400style64,
      )),
    );
  }
}
