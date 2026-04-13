
import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/App_colors.dart';
import 'package:fruit_hub/Core/utils/Assets.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';
import 'package:fruit_hub/Core/widgets/quantity_button.dart';

class QuantityCounter extends StatefulWidget {
  const QuantityCounter({super.key});

  @override
  State<QuantityCounter> createState() => _QuantityCounterState();
}

class _QuantityCounterState extends State<QuantityCounter> {
  late int quantity;

  @override
  void initState() {
    quantity = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
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
          style: TextStyless.bold16.copyWith(
            color: Color(0xff06140C),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        QuantityButton(
          color: Color(0xffF1F1F5),
          icon: Assets.minusicon,
          onTap: () {
            setState(
              () {
                if (quantity > 0) quantity--;
              },
            );
          },
        ),
      ],
    );
  }
}
