import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/entities/product_entitey.dart';
import 'package:fruit_hub/Core/utils/App_colors.dart';
import 'package:fruit_hub/Core/utils/Assets.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';
import 'package:fruit_hub/Core/widgets/quantity_button.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key, required this.productEntitey});

  final ProductEntitey productEntitey;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          color: Color(0xffF3F5F7),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
      child: Stack(
        children: [
          Positioned(
              top: 8,
              right: 8,
              child: GestureDetector(
                onTap: () {},
                child: Image.asset(Assets.hearticon),
              )),
          Positioned.fill(
              child: Column(
            children: [
              SizedBox(
                height: 22,
              ),
              productEntitey.imageUrl != null
                  ? Expanded(
                      child: Image.network(
                        productEntitey.imageUrl!,
                      ),
                    )
                  : SizedBox(
                      height: 100,
                      width: double.infinity,
                    ),
              SizedBox(
                height: 24,
              ),
              ListTile(
                title: Text(
                  productEntitey.name!,
                  style:
                      TextStyless.semiBold13.copyWith(color: Color(0xff0C0D0D)),
                ),
                subtitle: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: " ${productEntitey.price.toString()} جنيه ",
                          style: TextStyless.semiBold13
                              .copyWith(color: Color(0xffF4A91F))),
                      TextSpan(
                          text: '/ ',
                          style: TextStyless.semiBold13
                              .copyWith(color: Color(0xffF4A91F))),
                      TextSpan(
                          text:
                              ' ${productEntitey.unitAmount.toString()} كيلو ',
                          style: TextStyless.semiBold13
                              .copyWith(color: Color(0xffF8C76D)))
                    ],
                  ),
                ),
                trailing: QuantityButton(
                  color: AppColors.primaryColor,
                  icon: Assets.plusicon, onTap: () {  },
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
