import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/App_colors.dart';
import 'package:fruit_hub/Core/utils/Assets.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';
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
      children: [
        PageViewItem(
          backgorundimage: Assets.onBoarding1,
          image: Assets.fruitbasket,
          subtilte:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          isVisiable: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'مرحبًا بك في',
                style: TextStyless.bold23,
              ),
              Text('HUB',
                  style: TextStyless.bold23
                      .copyWith(color: AppColors.secondaryColor)),
              Text('Fruit',
                  style: TextStyless.bold23
                      .copyWith(color: AppColors.primaryColor)),
            ],
          ),
        ),
        PageViewItem(
          backgorundimage: Assets.onBoarding2,
          image: Assets.pineapple,
          subtilte:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          isVisiable: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
              'ابحث وتسوق',
                style: TextStyless.bold23,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
