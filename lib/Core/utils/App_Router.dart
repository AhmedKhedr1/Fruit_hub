// ignore_for_file: constant_identifier_names

import 'package:fruit_hub/Features/Splash/Presentation/Views/SplashView.dart';
import 'package:fruit_hub/Features/onboarding/Presentation/Views/Onboarding_View.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  //
  static const String KSplashView = '/';
  static const String KOnboardingView = '/onboardingview';

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
  ]);
}
