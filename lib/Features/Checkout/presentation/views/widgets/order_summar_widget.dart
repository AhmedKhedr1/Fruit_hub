// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';

class OrderSummryWidget extends StatelessWidget {
  const OrderSummryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ملخص الطلب :',
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
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'المجموع الفرعي :',
                    style: TextStyless.regular13
                        .copyWith(color: Color(0xff4E5556)),
                  ),
                  Spacer(),
                  Text(
                    '150 جنيه',
                    style: TextStyless.semiBold16
                        .copyWith(color: Color(0xff0C0D0D)),
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Text(
                    'التوصيل  :',
                    style: TextStyless.regular13
                        .copyWith(color: Color(0xff4E5556)),
                  ),
                  Spacer(),
                  Text(
                    '30جنية',
                    style: TextStyless.semiBold13
                        .copyWith(color: Color(0xff4E5556)),
                  )
                ],
              ),
              Divider(
                color: Color(0xffCACECE),
                height: 16,
                endIndent: 32,
                indent: 32,
              ),
              Row(
                children: [
                  Text(
                    'الكلي',
                    style:
                        TextStyless.bold16.copyWith(color: Color(0xff0C0D0D)),
                  ),
                  Spacer(),
                  Text(
                    '180 جنيه',
                    style:
                        TextStyless.bold16.copyWith(color: Color(0xff0C0D0D)),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
