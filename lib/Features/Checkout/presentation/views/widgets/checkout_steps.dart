import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/widgets/build_error_bar.dart';
import 'package:fruit_hub/Features/Checkout/domain/entites/order_entity.dart';
import 'package:fruit_hub/Features/Checkout/presentation/views/widgets/step_item.dart';
import 'package:fruit_hub/generated/l10n.dart';

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
                if (context.read<OrderEntity>().payWihtCash != null) {
                  pageController.animateToPage(index,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeIn);
                } else {
                  ShowBar(context, S.current.select_payment_method);
                }
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
