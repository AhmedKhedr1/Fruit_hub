import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/Assets.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';
import 'package:fruit_hub/Core/widgets/quantity_counter.dart';
import 'package:fruit_hub/Features/cart/domain/entities/cart_item_entitey.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.cartItemEntitey});
  final CartItemEntitey cartItemEntitey;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 17),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.1),
      ),
      child: Row(
        children: [
          Container(
            width: 82,
            height: 100,
            decoration: BoxDecoration(color: Color(0xffF3F5F7)),
            child: Image.network(cartItemEntitey.productEntity.imageUrl!),
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cartItemEntitey.productEntity.name!,
                style: TextStyless.bold13.copyWith(color: Color(0xff06161C)),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                '${cartItemEntitey.calculateTotalWeight()} كم',
                style: TextStyless.regular13.copyWith(color: Color(0xffF4A91F)),
              ),
              SizedBox(
                height: 6,
              ),
              QuantityCounter()
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {},
                child: Image.asset(Assets.trash),
              ),
              SizedBox(
                height: 28,
              ),
              Text(
                '${cartItemEntitey.calculateTotalPrice()} جنيه ',
                style: TextStyless.bold16.copyWith(
                  color: Color(0xffF4A91F),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
