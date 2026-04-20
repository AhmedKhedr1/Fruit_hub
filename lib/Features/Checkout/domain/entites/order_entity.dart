import 'package:fruit_hub/Features/Checkout/domain/entites/shipping_address_entity.dart';
import 'package:fruit_hub/Features/cart/domain/entities/cart_entitey.dart';

class OrderEntity {
  final CartEntitey cartEntitey;
   bool? payWihtCash;
   ShippingAddressEntity? shippingAddressEntity;

  OrderEntity({
    required this.cartEntitey,
     this.payWihtCash,
     this.shippingAddressEntity,
  });
}
