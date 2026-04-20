// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/Checkout/domain/entites/order_entity.dart';
import 'package:fruit_hub/Features/Checkout/presentation/views/widgets/shipping_item.dart';
import 'package:provider/provider.dart';

class ShippingSection extends StatefulWidget {
  const ShippingSection({super.key});

  @override
  State<ShippingSection> createState() => _ShippingSectionState();
}

class _ShippingSectionState extends State<ShippingSection>
    with AutomaticKeepAliveClientMixin {
  int selectedIndex = -1;
  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShippingItem(
          title: 'الدفع عند الاستلام',
          subtitle: 'التسليم من المكان',
          price:
              (context.read<OrderEntity>().cartEntitey.calculateTotalPrice() +
                      40)
                  .toString(),
          isSelected: selectedIndex == 0,
          onTap: () {
            selectedIndex = 0;
            setState(() {});
            context.read<OrderEntity>().payWihtCash = true;
          },
        ),
        SizedBox(
          height: 8,
        ),
        ShippingItem(
          title: 'الدفع الان',
          subtitle: 'التسليم من المكان',
          price: context
              .read<OrderEntity>()
              .cartEntitey
              .calculateTotalPrice()
              .toString(),
          isSelected: selectedIndex == 1,
          onTap: () {
            selectedIndex = 1;
            setState(() {});
            context.read<OrderEntity>().payWihtCash = false;
          },
        )
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
