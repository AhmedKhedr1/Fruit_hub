import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/Checkout/presentation/views/widgets/step_item.dart';

class CheckoutSteps extends StatelessWidget {
  const CheckoutSteps(
      {super.key,
      required this.currentPageIndex,
      required this.pageController});
  final int currentPageIndex;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        getsteps().length,
        (index) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                pageController.animateToPage(index,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn);
              },
              child: StepItem(
                isActive: index <= currentPageIndex,
                index: (index + 1).toString(),
                title: getsteps()[index],
              ),
            ),
          );
        },
      ),
    );
  }
}

List<String> getsteps() {
  return ['الشحن', 'العنوان', 'الدفع'];
}
