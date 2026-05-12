// ignore_for_file: must_be_immutable

import 'package:fruit_hub/Core/entities/product_entitey.dart';
import 'package:equatable/equatable.dart';

class CartItemEntitey extends Equatable {
  final ProductEntitey productEntity;
  int count;

  CartItemEntitey({required this.productEntity, this.count = 0});
  num calculateTotalPrice() {
    return double.parse(
      (productEntity.price * count).toStringAsFixed(2),
    );
    ;
  }

  num calculateTotalWeight() {
    return productEntity.unitAmount * count;
  }

  void increasCount() {
    count++;
  }

  void decreasCount() {
    if (count > 0) count--;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [productEntity];
}
