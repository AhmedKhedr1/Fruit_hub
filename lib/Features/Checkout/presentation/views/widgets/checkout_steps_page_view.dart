import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/Checkout/presentation/views/widgets/address_input_section.dart';
import 'package:fruit_hub/Features/Checkout/presentation/views/widgets/shipping_section.dart';

class CheckoutStepsPageView extends StatelessWidget {
  const CheckoutStepsPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      physics: NeverScrollableScrollPhysics(),
      itemCount: getpages().length,
      itemBuilder: (context, index) {
        return getpages()[index];
      },
    );
  }
}

List<Widget> getpages() {
  return [
    ShippingSection(),
    AddressInputSection(),
    SizedBox(),
    SizedBox(),
  ];
}
