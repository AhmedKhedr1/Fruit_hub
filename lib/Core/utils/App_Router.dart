// ignore_for_file: constant_identifier_names

import 'package:fruit_hub/Features/Auth/Presentation/Views/signin_view.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Views/signup_view.dart';
import 'package:fruit_hub/Features/Home/home_view.dart';
import 'package:fruit_hub/Features/Splash/Presentation/Views/SplashView.dart';
import 'package:fruit_hub/Features/onboarding/Presentation/Views/Onboarding_View.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  //
  static const String KSplashView = '/';
  static const String KOnboardingView = '/onboardingview';
  static const String Kloginview = '/Loginview';
  static const String KRegisterview = '/Registerview';

  static const String KHomeview = '/Homeview';

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
      path: Kloginview,
      builder: (context, state) => SigninView(),
    ),
    GoRoute(
      path: KRegisterview,
      builder: (context, state) => SignupView(),
    ),
    GoRoute(
      path: KHomeview,
      builder: (context, state) => HomeView(),
    )
  ]);
}
