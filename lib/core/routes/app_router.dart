import 'package:dalel/core/routes/routes.dart';
import 'package:dalel/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:dalel/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:dalel/features/on_Boarding/presentation/screens/on_boarding_screen.dart';
import 'package:dalel/features/splash/presentation/splash_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: splashScreen,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: onBoardingScreen,
      builder: (context, state) => const OnBoardingScreen(),
    ),
    GoRoute(
      path: signUpScreen,
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(
      path: signInScreen,
      builder: (context, state) => const SignInScreen(),
    ),
  ],
);
