class AuthState {}

final class AuthInitial extends AuthState {}

final class SignUpLoadingState extends AuthState {}

final class SignUpSuccessState extends AuthState {}

final class SignUpFailureState extends AuthState {
  final String errorMessage;

  SignUpFailureState({required this.errorMessage});
}

final class CheckBoxValueState extends AuthState {}
final class PasswordVisibleState extends AuthState {
  final bool passwordVisible;

  PasswordVisibleState({required this.passwordVisible});}
