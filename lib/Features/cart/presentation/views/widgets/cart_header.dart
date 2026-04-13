
import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/App_colors.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';

class CartHeader extends StatelessWidget {
  const CartHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      width: double.infinity,
      height: 41,
      decoration: BoxDecoration(color: Color(0xffEBF9F1)),
      child: Center(
        child: Text(
          'لديك 3 منتجات في سله التسوق',
          style: TextStyless.regular13.copyWith(color: AppColors.primaryColor),
        ),
      ),
    );
  }
}
