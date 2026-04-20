import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/Checkout/presentation/views/widgets/address_input_section.dart';
import 'package:fruit_hub/Features/Checkout/presentation/views/widgets/payment_section.dart';
import 'package:fruit_hub/Features/Checkout/presentation/views/widgets/shipping_section.dart';

class CheckoutStepsPageView extends StatelessWidget {
  const CheckoutStepsPageView({
    super.key,
    required this.pageController,
    required this.formkey, required this.valueListenable,
  });

  final PageController pageController;
  final GlobalKey<FormState> formkey;
  final ValueNotifier<AutovalidateMode> valueListenable ;

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

  List<Widget> getpages() {
    return [
      ShippingSection(),
      AddressInputSection(formkey: formkey, valueListenable: valueListenable),
      PaymentSection(),
    ];
  }
}
