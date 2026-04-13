import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/widgets/Custom_Button.dart';
import 'package:fruit_hub/Features/cart/presentation/views/widgets/cart_header.dart';
import 'package:fruit_hub/Features/cart/presentation/views/widgets/cart_item_list.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                CartHeader(),
              ],
            ),
          ),
          CartItemList(
            cartItems: [],
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: CustomButton(title: 'الدفع  120جنيه', onpressed: () {}),
      ),
    );
  }
}
