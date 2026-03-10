import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';

class BestSellerHeader extends StatelessWidget {
  const BestSellerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'الأكثر مبيعًا',
          style: TextStyless.bold16.copyWith(color: Color(0xff0C0D0D)),
        ),
        Spacer(),
        Text(
          'المزيد',
          style: TextStyless.regular13.copyWith(color: Color(0xff949D9E)),
        )
      ],
    );
  }
}
