// ignore_for_file: strict_top_level_inference

import 'package:fruit_hub/Features/Checkout/domain/entites/shipping_address_entity.dart';
import 'package:fruit_hub/Features/cart/domain/entities/cart_entitey.dart';

class OrderEntity {
  final CartEntitey cartEntitey;
  bool? payWihtCash;
  ShippingAddressEntity shippingAddressEntity;
  final String uId;

  OrderEntity(
      {required this.cartEntitey,
      this.payWihtCash,
      required this.shippingAddressEntity,
      required this.uId});

  double calculateshippingCost() {
    if (payWihtCash!) {
      return 30;
    } else {
      return 0;
    }
  }

  double calculateShippingDiscount() {
    return 0;
  }

  double calculateTotalPriceAfterDiscountAndShipping() {
    return cartEntitey.calculateTotalPrice() +
        calculateshippingCost() -
        calculateShippingDiscount();
  }

}
