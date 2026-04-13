import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/cart/domain/entities/cart_item_entitey.dart';
import 'package:fruit_hub/Features/cart/presentation/views/widgets/cart_item.dart';

class CartItemList extends StatelessWidget {
  const CartItemList({super.key, required this.cartItems});
  final List<CartItemEntitey> cartItems;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: cartItems.length,
      itemBuilder: (context, index) {
        return CartItem(
          cartItemEntitey: cartItems[index],
        );
      },
    );
  }
}
