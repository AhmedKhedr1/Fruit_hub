import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/widgets/Custom_Button.dart';
import 'package:fruit_hub/Core/widgets/build_error_bar.dart';
import 'package:fruit_hub/Features/Checkout/domain/entites/order_entity.dart';
import 'package:fruit_hub/Features/Checkout/presentation/manager/add_order_cubit/add_order_cubit.dart';
import 'package:fruit_hub/Features/Checkout/presentation/views/widgets/checkout_steps.dart';
import 'package:fruit_hub/Features/Checkout/presentation/views/widgets/checkout_steps_page_view.dart';
import 'package:fruit_hub/generated/l10n.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key});

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  late PageController pageController;
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  ValueNotifier<AutovalidateMode> valueListenable =
      ValueNotifier(AutovalidateMode.disabled);
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        setState(() {
          currentPageIndex = pageController.page!.toInt();
        });
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    valueListenable.dispose();
    super.dispose();
  }

  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CheckoutSteps(
            currentPageIndex: currentPageIndex,
            pageController: pageController,
          ),
          SizedBox(
            height: 32,
          ),
          Expanded(
              child: CheckoutStepsPageView(
            pageController: pageController,
            formkey: _formkey,
            valueListenable: valueListenable,
          )),
          CustomButton(
              title: getnextbuttonTitle(currentPageIndex),
              onpressed: () {
                if (currentPageIndex == 0) {
                  _handleShippingSectionValdition(context);
                } else if (currentPageIndex == 1) {
                  _handlAddressValdition();
                }else{
                  var orderentity=context.read<OrderEntity>();
                  context.read<AddOrderCubit>().addOrder(order:orderentity );
                }
              }),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }

  void _handleShippingSectionValdition(BuildContext context) {
    if (context.read<OrderEntity>().payWihtCash != null) {
      pageController.animateToPage(currentPageIndex + 1,
          duration: Duration(milliseconds: 100), curve: Curves.bounceIn);
    } else {
      ShowBar(
        context,
        S.current.select_payment_method,
      );
    }
  }

  String getnextbuttonTitle(int currentPageIndex) {
    switch (currentPageIndex) {
      case 0:
        return "التالي";
      case 1:
        return "التالي";
      case 2:
        return " تأكيد الطلب";
      default:
        return "التالي";
    }
  }

  void _handlAddressValdition() {
    if (_formkey.currentState!.validate()) {
      _formkey.currentState!.save();
      pageController.animateToPage(currentPageIndex + 1,
          duration: Duration(milliseconds: 100), curve: Curves.bounceIn);
    } else {
      valueListenable.value = AutovalidateMode.always;
    }
  }
}
