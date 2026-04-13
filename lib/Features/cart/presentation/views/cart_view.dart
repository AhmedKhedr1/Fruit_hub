import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/widgets/build_app_bar.dart';
import 'package:fruit_hub/Features/cart/presentation/views/widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: 'السلة',
        leading: false,
        notification: false,
      ),
      backgroundColor: Colors.white,
      body: CartViewBody(),
    );
  }
}
