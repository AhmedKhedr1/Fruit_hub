import 'package:fruit_hub/Features/Checkout/domain/entites/order_entity.dart';

import 'amount.dart';
import 'item_list.dart';

class PaypalPaymentEntity {
  Amount? amount;
  String? description;
  ItemList? itemList;

  PaypalPaymentEntity({this.amount, this.description, this.itemList});

  toJson() => {
        'amount': amount?.toJson(),
        'description': description,
        'item_list': itemList?.toJson(),
      };
  factory PaypalPaymentEntity.fromEntity(OrderEntity entity) {
    return PaypalPaymentEntity(
        amount: Amount.fromEntity(entity),
        description: 'Payment Description',
        itemList: ItemList.fromentity(items: entity.cartEntitey.cartItems));
  }
}
