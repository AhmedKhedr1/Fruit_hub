// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/Checkout/presentation/views/widgets/shipping_item.dart';

class ShippingSection extends StatefulWidget {
  const ShippingSection({super.key});

  @override
  State<ShippingSection> createState() => _ShippingSectionState();
}

class _ShippingSectionState extends State<ShippingSection> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShippingItem(
          title: 'الدفع عند الاستلام',
          subtitle: 'التسليم من المكان',
          price: '40 جنيه',
          isSelected: selectedIndex == 0,
          onTap: () {
            selectedIndex = 0;
            setState(() {});
          },
        ),
        SizedBox(
          height: 8,
        ),
        ShippingItem(
          title: 'الدفع الان',
          subtitle: 'التسليم من المكان',
          price: 'مجاني',
          isSelected: selectedIndex == 1,
          onTap: () {
            selectedIndex = 1;
            setState(() {});
          },
        )
      ],
    );
  }
}
