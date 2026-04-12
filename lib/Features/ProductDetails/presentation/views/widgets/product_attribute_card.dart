import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';
import 'package:fruit_hub/Features/ProductDetails/domain/entities/product_aattribute_entitey.dart';

class ProductAttributeCard extends StatelessWidget {
  const ProductAttributeCard({super.key, required this.attrebutie});
  final ProductAattributeEntitey attrebutie;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 12, bottom: 12, right: 16, left: 24),
      width: 163,
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(width: 1.5, color: Color(0xffF1F1F5))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                attrebutie.title,
                style: TextStyless.bold16.copyWith(color: Color(0xff23AA49)),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                attrebutie.subtitle,
                style:
                    TextStyless.semiBold13.copyWith(color: Color(0xff979899)),
              )
            ],
          ),
          SizedBox(
            width: 16,
          ),
          Image.asset(
            attrebutie.icon,
            height: 40,
            width: 40,
          )
        ],
      ),
    );
  }
}
