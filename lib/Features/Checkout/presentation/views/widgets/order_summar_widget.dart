// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';
import 'package:fruit_hub/Features/Checkout/domain/entites/order_entity.dart';

class OrderSummryWidget extends StatelessWidget {
  const OrderSummryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    num orderprice =
        context.read<OrderEntity>().cartEntitey.calculateTotalPrice();
    num shippingPrice = context.read<OrderEntity>().payWihtCash! ? 30 : 0;
    num totalPrice = orderprice + shippingPrice;
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
                    '${orderprice.toString()} جنيه',
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
                    '${shippingPrice.toString()} جنيه',
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
                    '${totalPrice.toString()} جنيه',
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
