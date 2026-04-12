import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/App_colors.dart';
import 'package:fruit_hub/Core/utils/Assets.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';
import 'package:fruit_hub/Core/widgets/quantity_button.dart';

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
  late int quantity;

  @override
  void initState() {
    quantity = 0;
    super.initState();
  }

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
            )
          ],
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          QuantityButton(
            color: AppColors.primaryColor,
            icon: Assets.plusicon,
            onTap: () {
              setState(() {
                quantity++;
              });
            },
          ),
          SizedBox(width: 10),
          Text(
            quantity.toString(),
            style: TextStyless.bold16.copyWith(color: Color(0xff06140C)),
          ),
          SizedBox(
            width: 10,
          ),
          QuantityButton(
            color: Color(0xffF1F1F5),
            icon: Assets.minusicon,
            onTap: () {
              setState(() {
                if (quantity > 0) quantity--;
              });
            },
          )
        ],
      ),
    );
  }
}
