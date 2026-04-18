import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/Core/utils/App_colors.dart';
import 'package:fruit_hub/Core/utils/Assets.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';

class ActiveStepItem extends StatelessWidget {
  const ActiveStepItem({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: AppColors.primaryColor,
          radius: 12,
          child: SvgPicture.asset(Assets.checkicon),
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          title,
          style: TextStyless.bold13.copyWith(color: AppColors.primaryColor),
        )
      ],
    );
  }
}
