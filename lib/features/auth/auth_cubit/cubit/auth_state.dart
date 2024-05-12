class AuthState {}

final class AuthInitial extends AuthState {}

final class SignUpLoadingState extends AuthState {}

final class SignUpSuccessState extends AuthState {}

final class SignUpFailureState extends AuthState {
  final String errorMessage;

  SignUpFailureState({required this.errorMessage});
}

final class SigninLoadingState extends AuthState {}

final class SigninSuccessState extends AuthState {}

final class SigninFailureState extends AuthState {
  final String errorMessage;

  SigninFailureState({required this.errorMessage});
}

final class CheckBoxValueState extends AuthState {}

final class PasswordVisibleState extends AuthState {
  final bool passwordVisible;

  PasswordVisibleState({required this.passwordVisible});
}

final class ForgotPasswordLoadingState extends AuthState {}

final class ForgotPasswordSuccessState extends AuthState {}

final class ForgetPasswordFailureState extends AuthState {
  final String errorMessage;

  ForgetPasswordFailureState({required this.errorMessage});
}
