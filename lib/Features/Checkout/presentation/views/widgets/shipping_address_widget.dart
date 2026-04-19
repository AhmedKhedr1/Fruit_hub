// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/Assets.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';

class ShippingAddressWidget extends StatelessWidget {
  const ShippingAddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'عنوان التوصيل :',
          style: TextStyless.bold13,
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 4),
          decoration: BoxDecoration(
              color: Color(0xFFF2F3F3).withOpacity(0.5),
              borderRadius: BorderRadius.circular(4)),
          child: Row(
            children: [
              Image.asset(
                Assets.location,
                height: 24,
                width: 24,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'شارع النيل، مبنى رقم ١٢٣',
                style: TextStyless.regular16.copyWith(color: Color(0xff4E5556)),
              ),
              Spacer(),
              Image.asset(
                Assets.Edit,
                height: 16,
                width: 16,
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                'تعديل',
                style:
                    TextStyless.semiBold13.copyWith(color: Color(0xff949D9E)),
              )
            ],
          ),
        )
      ],
    );
  }
}
