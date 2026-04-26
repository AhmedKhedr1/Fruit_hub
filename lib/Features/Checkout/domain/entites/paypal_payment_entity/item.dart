import 'package:fruit_hub/Core/helper/get_currency.dart';
import 'package:fruit_hub/Features/cart/domain/entities/cart_item_entitey.dart';

class ItemEntity {
  String? name;
  int? quantity;
  String? price;
  String? currency;

  ItemEntity({this.name, this.quantity, this.price, this.currency});

  Map<String, dynamic> toJson() => {
        'name': name,
        'quantity': quantity,
        'price': price,
        'currency': currency,
      };
  factory ItemEntity.fromEntity(CartItemEntitey entity) {
    return ItemEntity(
      name: entity.productEntity.name,
      quantity: entity.count,
      price: entity.productEntity.price.toString(),
      currency: getcurrency(),
    );
  }
}
