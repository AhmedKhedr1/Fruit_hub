import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/App_colors.dart';
import 'package:fruit_hub/Core/utils/Assets.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          color: Color(0xffF3F5F7),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
      child: Stack(
        children: [
          Positioned(
              top: 8,
              right: 8,
              child: GestureDetector(
                onTap: () {},
                child: Image.asset(Assets.hearticon),
              )),
          Positioned.fill(
              child: Column(
            children: [
              SizedBox(
                height: 22,
              ),
              Image.asset(
                Assets.testimage,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 24,
              ),
              ListTile(
                title: Text(
                  'بطيخ',
                  style:
                      TextStyless.semiBold13.copyWith(color: Color(0xff0C0D0D)),
                ),
                subtitle: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: '20جنية',
                          style: TextStyless.semiBold13
                              .copyWith(color: Color(0xffF4A91F))),
                      TextSpan(
                          text: '/ ',
                          style: TextStyless.semiBold13
                              .copyWith(color: Color(0xffF4A91F))),
                      TextSpan(
                          text: 'الكيلو',
                          style: TextStyless.semiBold13
                              .copyWith(color: Color(0xffF8C76D)))
                    ],
                  ),
                ),
                trailing: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(22)),
                    child: Image.asset(Assets.plusicon),
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
