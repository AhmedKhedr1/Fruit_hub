import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/Checkout/presentation/views/widgets/order_summar_widget.dart';
import 'package:fruit_hub/Features/Checkout/presentation/views/widgets/shipping_address_widget.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({super.key, required this.pageController});
final PageController pageController ;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OrderSummryWidget(),
        SizedBox(
          height: 16,
        ),
        ShippingAddressWidget(pageController: pageController,)
      ],
    );
  }
}
