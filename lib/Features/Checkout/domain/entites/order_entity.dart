import 'package:fruit_hub/Features/Checkout/domain/entites/shipping_address_entity.dart';
import 'package:fruit_hub/Features/cart/domain/entities/cart_item_entitey.dart';

class OrderEntity {
  final List<CartItemEntitey> caritems;
  final bool payWihtCash;
  final ShippingAddressEntity shippingAddressEntity;

  OrderEntity({
    required this.caritems,
    required this.payWihtCash,
    required this.shippingAddressEntity,
  });
}
