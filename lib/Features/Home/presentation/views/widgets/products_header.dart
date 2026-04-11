import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/Assets.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';

class ProductsHeader extends StatelessWidget {
  const ProductsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'منتجاتنا',
          style: TextStyless.bold16.copyWith(color: Color(0xff0C0D0D)),
        ),
        Spacer(),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: Colors.grey.shade300, width: 1),
          ),
          child: Image.asset(Assets.arrowswaphorizontal),
        ),
      ],
    );
  }
}
