import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/widgets/Custom_Button.dart';
import 'package:fruit_hub/Features/Checkout/presentation/views/widgets/checkout_steps.dart';
import 'package:fruit_hub/Features/Checkout/presentation/views/widgets/checkout_steps_page_view.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key});

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CheckoutSteps(),
          SizedBox(
            height: 32,
          ),
          Expanded(
              child: CheckoutStepsPageView(pageController: pageController)),
          CustomButton(
              title: 'التالي',
              onpressed: () {
                pageController.nextPage(
                    duration: Duration(milliseconds: 100),
                    curve: Curves.easeIn);
              }),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
