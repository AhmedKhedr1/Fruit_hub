// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/App_colors.dart';
import 'package:fruit_hub/Core/utils/Assets.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';

class LogoutButton extends StatelessWidget {
  LogoutButton({super.key, required this.onTap});
  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        margin: EdgeInsets.only(bottom: 33),
        height: 41,
        width: double.infinity,
        decoration: BoxDecoration(color: Color(0xffEBF9F1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
            ),
            Text(
              'تسجيل الخروج',
              style: TextStyless.semiBold16
                  .copyWith(color: AppColors.primaryColor),
            ),
            SizedBox(
              width: 100,
            ),
            Image.asset(Assets.logout),
          ],
        ),
      ),
    );
  }
}
