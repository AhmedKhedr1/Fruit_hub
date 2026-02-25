import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/Constant.dart';
import 'package:fruit_hub/Core/services/shared_preferences_singelton.dart';
import 'package:fruit_hub/Core/utils/App_Router.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';
import 'package:go_router/go_router.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.backgorundimage,
    required this.image,
    required this.subtilte,
    required this.isVisiable,
    required this.title,
  });
  final String backgorundimage, image, subtilte;
  final Widget title;
  final bool isVisiable;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          children: [
            SvgPicture.asset(
              backgorundimage,
              fit: BoxFit.cover,
              height: 544,
            ),
            Positioned(
                left: 0,
                right: 0,
                top: 250,
                child: SvgPicture.asset(
                  image,
                  height: 270,
                  width: 250,
                  fit: BoxFit.scaleDown,
                )),
            Positioned(
              top: 34,
              right: 8,
              child: Visibility(
                visible: isVisiable,
                child: GestureDetector(
                    child: TextButton(
                  onPressed: () {
                     Prefs.setBool(KisOnBoardingViewSeen, true);
                    GoRouter.of(context).go(AppRouter.Kloginview);
                  },
                  child: Text(
                    'تخط',
                    style: TextStyless.regular13
                        .copyWith(color: Color(0xff949d9e)),
                  ),
                )),
              ),
            )
          ],
        ),
        SizedBox(
          height: 64,
        ),
        title,
        SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            textAlign: TextAlign.center,
            subtilte,
            style: TextStyless.semiBold13.copyWith(color: Color(0xff4e5456)),
          ),
        )
      ],
    );
  }
}
