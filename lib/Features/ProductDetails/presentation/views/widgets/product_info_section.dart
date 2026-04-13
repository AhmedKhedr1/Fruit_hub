import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';
import 'package:fruit_hub/Core/widgets/quantity_counter.dart';

class ProductInfoSection extends StatefulWidget {
  const ProductInfoSection(
      {super.key,
      required this.productName,
      required this.unitAmount,
      required this.price});
  final String productName, unitAmount, price;

  @override
  State<ProductInfoSection> createState() => _ProductInfoSectionState();
}

class _ProductInfoSectionState extends State<ProductInfoSection> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 21),
        title: Text(
          widget.productName,
          style: TextStyless.bold16.copyWith(color: Color(0xff0C0D0D)),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Row(
            children: [
              Text(
                ' ${widget.price} جنيه',
                style: TextStyless.bold13.copyWith(color: Color(0xffF4A91F)),
              ),
              Text(
                '/ ${widget.unitAmount} كيلو ',
                style: TextStyless.bold13.copyWith(color: Color(0xffF8C76D)),
              ),
            ],
          ),
        ),
        trailing: QuantityCounter());
  }
}
