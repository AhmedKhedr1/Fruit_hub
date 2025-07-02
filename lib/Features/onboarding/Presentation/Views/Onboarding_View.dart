import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/onboarding/Presentation/Views/Widgets/Onboarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingViewBody(),
    );
  }
}