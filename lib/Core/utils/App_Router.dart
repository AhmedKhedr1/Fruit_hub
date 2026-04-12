// ignore_for_file: constant_identifier_names

import 'package:fruit_hub/Core/entities/product_entitey.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Views/signin_view.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Views/signup_view.dart';
import 'package:fruit_hub/Features/Checkout/presentation/views/checkout_view.dart';
import 'package:fruit_hub/Features/Home/presentation/views/home_view.dart';
import 'package:fruit_hub/Features/Home/presentation/views/main_view.dart';
import 'package:fruit_hub/Features/ProductDetails/presentation/views/product_details_view.dart';
import 'package:fruit_hub/Features/ProductDetails/presentation/views/reviews_view.dart';
import 'package:fruit_hub/Features/Profile/presentation/views/profile_view.dart';
import 'package:fruit_hub/Features/Splash/Presentation/Views/SplashView.dart';
import 'package:fruit_hub/Features/Home/presentation/views/best_selling_view.dart';
import 'package:fruit_hub/Features/cart/presentation/views/cart_view.dart';
import 'package:fruit_hub/Features/onboarding/Presentation/Views/Onboarding_View.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  //
  static const String KSplashView = '/';
  static const String KOnboardingView = '/onboardingview';
  static const String Kloginview = '/Loginview';
  static const String KRegisterview = '/Registerview';
  static const String KHomeview = '/Homeview';
  static const String KMainview = '/Mainview';
  static const String KBestsellingview = '/Bestsellingview';
  static const String KProductsview = '/Productsview';
  static const String KCheckoutview = '/Checkoutview';
  static const String KProfileview = '/Profileview';
  static const String KCartview = '/Cartview';
  static const String KProductDetailsview = '/ProductDetailsview';
  static const String reviewsview = '/ReviewsView';

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
    ),
    GoRoute(
      path: KMainview,
      builder: (context, state) => MainView(),
    ),
    GoRoute(
      path: KBestsellingview,
      builder: (context, state) => BestSellingView(),
    ),
    GoRoute(
      path: KCheckoutview,
      builder: (context, state) => CheckoutView(),
    ),
    GoRoute(
      path: KProfileview,
      builder: (context, state) => ProfileView(),
    ),
    GoRoute(
      path: KCartview,
      builder: (context, state) => CartView(),
    ),
    GoRoute(
      path: KProductDetailsview,
      builder: (context, state) {
        final product = state.extra as ProductEntitey;
        return ProductDetailsView(product: product);
      },
    ),
    GoRoute(
      path: reviewsview,
      builder: (context, state) => ReviewsView(),
    ),
  ]);
}
