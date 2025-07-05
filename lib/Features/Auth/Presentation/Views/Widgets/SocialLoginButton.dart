// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';

class SocialLoginButton extends StatelessWidget {
  SocialLoginButton(
      {super.key, required this.imagePath, required this.hintText, this.onTap});
  final String imagePath, hintText;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 12),
        width: double.infinity,
        height: 58,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color(0xffDDDFDF)),
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              imagePath,
            ),
            Expanded(
              child: Text(
                textAlign: TextAlign.center,
                hintText,
                style: TextStyless.semiBold16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
