// ignore_for_file: deprecated_member_use, must_be_immutable

import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/App_colors.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';
import 'package:fruit_hub/Features/Checkout/presentation/views/widgets/active_and_inactive_shipping_item_dot.dart';

class ShippingItem extends StatelessWidget {
  ShippingItem(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.price,
      required this.isSelected,
      required this.onTap});
  final String title, subtitle, price;
  bool isSelected;
  void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.only(top: 16, bottom: 16, left: 13, right: 2),
        width: double.infinity,
        height: 85,
        decoration: BoxDecoration(
          border: isSelected ? Border.all(color: AppColors.primaryColor) : null,
          color: Color(0xffF7F7F7),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            isSelected ? ActiveShippingItemDot() : InActiveShippingItemDot(),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style:
                      TextStyless.semiBold13.copyWith(color: Color(0xff000000)),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  subtitle,
                  style: TextStyless.regular13
                      .copyWith(color: Color(0xff000000).withOpacity(0.5)),
                ),
              ],
            ),
            Spacer(),
            Center(
              child: Text(
                price,
                style:
                    TextStyless.bold13.copyWith(color: AppColors.primaryColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
