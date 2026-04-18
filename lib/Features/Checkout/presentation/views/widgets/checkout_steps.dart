import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/Checkout/presentation/views/widgets/step_item.dart';

class CheckoutSteps extends StatelessWidget {
  const CheckoutSteps({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        getsteps().length,
        (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: StepItem(
              isActive: false,
              index: (index + 1).toString(),
              title: getsteps()[index],
            ),
          );
        },
      ),
    );
  }
}

List<String> getsteps() {
  return ['الشحن', 'العنوان', 'الدفع', 'المراجعه'];
}
