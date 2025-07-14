import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/Constant.dart';
import 'package:fruit_hub/Core/services/shared_preferences_singelton.dart';
import 'package:fruit_hub/Core/utils/App_Router.dart';
import 'package:fruit_hub/Core/utils/App_colors.dart';
import 'package:fruit_hub/Core/widgets/Custom_Button.dart';
import 'package:fruit_hub/Features/onboarding/Presentation/Views/Widgets/OnBoarding_Page_View.dart';
import 'package:go_router/go_router.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController pageController;
  int currentpage = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      final newPage = pageController.page!.round();
      if (newPage != currentpage) {
        setState(() {
          currentpage = newPage;
        });
      }
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnboardingPageView(
            pageController: pageController,
          ),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            size: const Size(11, 11),
            activeSize: const Size(11, 11),
            color: currentpage == 1
                ? AppColors.primaryColor
                : AppColors.primaryColor.withOpacity(0.5),
            activeColor: AppColors.primaryColor,
          ),
        ),
        Visibility(
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
          visible: currentpage == 1,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
            child: CustomButton(
              title: 'ابدأ الان',
              onpressed: () {
                Prefs.setBool(KisOnBoardingViewSeen, true);
                GoRouter.of(context).go(AppRouter.KSignInview);
              },
            ),
          ),
        ),
        const SizedBox(height: 43),
      ],
    );
  }
}
