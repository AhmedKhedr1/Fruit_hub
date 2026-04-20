import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/widgets/build_app_bar.dart';
import 'package:fruit_hub/Features/Checkout/domain/entites/order_entity.dart';
import 'package:fruit_hub/Features/Checkout/presentation/views/widgets/checkout_view_body.dart';
import 'package:fruit_hub/Features/cart/domain/entities/cart_entitey.dart';
import 'package:provider/provider.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key, required this.cartEntitey});
  final CartEntitey cartEntitey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context,
          title: 'الشحن', leading: true, notification: true),
      body: Provider.value(
          value: OrderEntity(cartEntitey: cartEntitey),
          child: CheckoutViewBody()),
    );
  }
}
