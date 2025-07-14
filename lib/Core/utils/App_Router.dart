// ignore_for_file: constant_identifier_names

import 'package:fruit_hub/Features/Auth/Presentation/Views/SignIn_view.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Views/Register_View.dart';
import 'package:fruit_hub/Features/Home/Presentation/Views/Home_View.dart';
import 'package:fruit_hub/Features/Splash/Presentation/Views/SplashView.dart';
import 'package:fruit_hub/Features/onboarding/Presentation/Views/Onboarding_View.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  //
  static const String KSplashView = '/';
  static const String KOnboardingView = '/onboardingview';
  static const String KSignInview = '/Loginview';
  static const String KRegisterview = '/Registerview';
  static const String KHomview = '/HomView';

//
  static final router = GoRouter(routes: [
    GoRoute(
      path: KSplashView,
      builder: (context, state) => Splashview(),
    ),
    GoRoute(
      path: KOnboardingView,
      builder: (context, state) => OnboardingView(),
    ),
    GoRoute(
      path: KSignInview,
      builder: (context, state) => SigninView(),
    ),
    GoRoute(
      path: KRegisterview,
      builder: (context, state) => RegisterView(),
    ),
    GoRoute(
      path: KHomview,
      builder: (context, state) => HomeView(),
    )
  ]);
}
