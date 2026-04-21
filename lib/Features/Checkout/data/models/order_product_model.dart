import 'package:fruit_hub/Features/cart/domain/entities/cart_item_entitey.dart';

class OrderProductModel {
  final String anme, code, imageUrl;
  final double price;
  final int quantity;

  OrderProductModel(
      {required this.anme,
      required this.code,
      required this.imageUrl,
      required this.price,
      required this.quantity});

  factory OrderProductModel.fromEntity(CartItemEntitey cartItemEntity) {
    return OrderProductModel(
      anme: cartItemEntity.productEntity.name!,
      code: cartItemEntity.productEntity.code!,
      imageUrl: cartItemEntity.productEntity.imageUrl!,
      price: cartItemEntity.productEntity.price.toDouble(),
      quantity: cartItemEntity.count,
    );
  }
  tojson() {
    return {
      'anme': anme,
      'code': code,
      'imageUrl': imageUrl,
      'price': price,
      'quantity': quantity
    };
  }
}
