import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/routes/routes.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
              customReplacementNavigate(context, signInScreen);
            },
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: Center(
        child: Text(
          'This is Home Screen',
          style: CustomTextStyles.poppins500style24,
        ),
      ),
    );
  }
}
