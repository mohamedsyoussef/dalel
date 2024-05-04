import 'package:dalel/core/routes/routes.dart';
import 'package:dalel/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:dalel/features/on_Boarding/presentation/screens/on_boarding_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const OnBoardingScreen(),
    ),
    GoRoute(
      path: signUpScreen,
      builder: (context, state) => const SignUpScreen(),
    ),
  ],
);
