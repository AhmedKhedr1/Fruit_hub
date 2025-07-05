
import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/App_colors.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';

class DonotHaveAccount extends StatelessWidget {
  const DonotHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          ' لا تمتلك حساب؟',
          style: TextStyless.semiBold16.copyWith(
            color: Color(0xff949D9E),
          ),
        ),
        Text(' قم بانشاء حساب ',
            style: TextStyless.semiBold16.copyWith(
              color: AppColors.primaryColor,
            ))
      ],
    );
  }
}
