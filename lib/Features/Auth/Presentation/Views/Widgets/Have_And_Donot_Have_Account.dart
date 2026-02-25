import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/App_colors.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';

class HaveAndDonotHaveAccount extends StatelessWidget {
  const HaveAndDonotHaveAccount({
    super.key,
    required this.P1OfText,
    required this.p2OfText,required this.onTap,
  });
  final String P1OfText, p2OfText;
final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          P1OfText,
          style: TextStyless.semiBold16.copyWith(
            color: Color(0xff949D9E),
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(p2OfText,
              style: TextStyless.semiBold16.copyWith(
                color: AppColors.primaryColor,
              )),
        )
      ],
    );
  }
}
