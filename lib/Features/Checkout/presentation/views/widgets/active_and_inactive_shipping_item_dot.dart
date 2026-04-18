import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/App_colors.dart';

class InActiveShippingItemDot extends StatelessWidget {
  const InActiveShippingItemDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18,
      height: 18,
      decoration: ShapeDecoration(
          shape:
              OvalBorder(side: BorderSide(width: 1, color: Color(0xff949d9e)))),
    );
  }
}

class ActiveShippingItemDot extends StatelessWidget {
  const ActiveShippingItemDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      width: 18,
      height: 18,
      decoration: ShapeDecoration(
        color: AppColors.primaryColor,
        shape: OvalBorder(
          side: BorderSide(width: 4, color: Colors.white),
        ),
      ),
    );
  }
}
