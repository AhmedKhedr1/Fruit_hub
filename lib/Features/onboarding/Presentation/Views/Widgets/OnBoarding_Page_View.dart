import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/Assets.dart';
import 'package:fruit_hub/Features/onboarding/Presentation/Views/Widgets/Page_View_item.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        PageViewItem(
          backgorundimage: Assets.onBoarding1,
          image: Assets.fruitbasket,
          title_ar: '',
          subtilte:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          isVisiable: true,
        ),
        PageViewItem(
          backgorundimage: Assets.onBoarding2,
          image: Assets.pineapple,
          title_ar: '',
          subtilte:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          isVisiable: false,
        ),
      ],
    );
  }
}
