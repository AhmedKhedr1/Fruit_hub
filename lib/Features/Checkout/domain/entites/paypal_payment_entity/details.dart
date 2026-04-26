import 'package:fruit_hub/Features/Checkout/domain/entites/order_entity.dart';

class Details {
  String? subtotal;
  String? shipping;
  int? shippingDiscount;

  Details({this.subtotal, this.shipping, this.shippingDiscount});

  Map<String, dynamic> toJson() => {
        'subtotal': subtotal,
        'shipping': shipping,
        'shipping_discount': shippingDiscount,
      };

  factory Details.fromEntity(OrderEntity entity) {
    return Details(
      subtotal: entity.cartEntitey.calculateTotalPrice().toString(),
      shipping: entity.calculateshippingCost().toString(),
      shippingDiscount: entity.calculateShippingDiscount().toInt(),
    );
  }
}
