import 'package:dalel/core/routes/routes.dart';
import 'package:dalel/features/auth/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/screens/forget_password_screen.dart';
import 'package:dalel/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:dalel/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:dalel/features/home/presentation/screens/home_screen.dart';
import 'package:dalel/features/home/presentation/widgets/home_nave_bar.dart';
import 'package:dalel/features/on_Boarding/presentation/screens/on_boarding_screen.dart';
import 'package:dalel/features/splash/presentation/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const SignUpScreen(),
      ),
    ),
    GoRoute(
      path: signInScreen,
      builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const SignInScreen(),
      ),
    ),
    GoRoute(
      path: forgetPasswordScreen,
      builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const ForgetPasswordScreen(),
      ),
    ),
    GoRoute(
      path: homeNavBar,
      builder: (context, state) => HomeNavBar(),
    ),
  ],
);
