import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dalel/features/auth/auth_cubit/cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? firstName;
  String? lastName;
  String? emailAddress;
  String? password;
  bool? isCheckBoxValue = false;
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> signInFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> forgotPasswordKey = GlobalKey<FormState>();
  bool passwordVisible = false;
  signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());

      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      verifyEmail();
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignUpFailureState(
            errorMessage: 'The password provided is too weak.'));
      } else if (e.code == 'invalid-email') {
        emit(SignUpFailureState(errorMessage: 'invalid-email'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignUpFailureState(
            errorMessage: 'The account already exists for that email.'));
      } else {
        emit(SignUpFailureState(errorMessage: e.code.toString()));
      }
    } catch (e) {
      emit(SignUpFailureState(errorMessage: e.toString()));
    }
  }

  signInWithEmailAndPassword() async {
    try {
      emit(SigninLoadingState());

      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SigninSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(SignUpFailureState(errorMessage: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(SigninFailureState(
            errorMessage: 'Wrong password provided for that user.'));
      } else {
        emit(
          SigninFailureState(errorMessage: e.code.toString()),
        );
      }
    } catch (e) {
      emit(SignUpFailureState(errorMessage: e.toString()));
    }
  }

  verifyEmail() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }

  checkBoxValueChecker({required newValue}) {
    isCheckBoxValue = newValue;
    emit(CheckBoxValueState());
  }

  void togglePasswordVisibility() {
    passwordVisible = !passwordVisible;
    emit(PasswordVisibleState(passwordVisible: passwordVisible));
  }

  resetPasswordLink() {
    try {
      emit(ForgotPasswordLoadingState());
      FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress!);
      emit(ForgotPasswordSuccessState());
    } on FirebaseAuthException catch (e) {
      emit(ForgetPasswordFailureState(errorMessage: e.code.toString()));
    }
  }
}
