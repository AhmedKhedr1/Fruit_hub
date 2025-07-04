import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/Constant.dart';
import 'package:fruit_hub/Core/services/shared_preferences_singelton.dart';
import 'package:fruit_hub/Core/utils/App_Router.dart';
import 'package:fruit_hub/Core/utils/Assets.dart';
import 'package:go_router/go_router.dart';

class Splashviewbody extends StatefulWidget {
  const Splashviewbody({super.key});

  @override
  State<Splashviewbody> createState() => _SplashviewbodyState();
}

class _SplashviewbodyState extends State<Splashviewbody> {
  @override
  void initState() {
    navigateToOnboarding();
    // TODO: implement initState
    super.initState();
  }

  void navigateToOnboarding() {
    bool isOnboardinViewSeen = Prefs.getBool(KisOnBoardingViewSeen);
    Future.delayed(
      Duration(seconds: 2),
      () {
        if (isOnboardinViewSeen==true) {
  GoRouter.of(context).go(AppRouter.Kloginview);
}else{
   GoRouter.of(context).go(AppRouter.KOnboardingView);
}
      },
    );

    // This will navigate to the OnboardingView after a delay of 300 milliseconds.
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(Assets.Splashplant),
          ],
        ),
        Image.asset(
          Assets.SplashIcon,
          height: 173,
          width: 178,
        ),
        SvgPicture.asset(
          Assets.SplashBottom,
          fit: BoxFit.fitWidth,
        )
      ],
    );
  }
}
