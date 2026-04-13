import 'package:fruit_hub/Core/entities/product_entitey.dart';

class CartItemEntitey {
  final ProductEntitey productEntity;
  int count;

  CartItemEntitey({required this.productEntity, this.count = 0});
  num calculateTotalPrice() {
    return productEntity.price * count;
  }

  num calculateTotalWeight() {
    return productEntity.unitAmount * count;
  }

  void increasCount() {
    count++;
  }

  void dencreasCount() {
    if (count > 0) count--;
  }
}
