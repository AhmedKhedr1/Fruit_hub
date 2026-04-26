import 'package:fruit_hub/Features/cart/domain/entities/cart_item_entitey.dart';

import 'item.dart';

class ItemList {
  List<ItemEntity>? items;

  ItemList({this.items});

  factory ItemList.fromentity({required List<CartItemEntitey> items}) {
    return ItemList(items: items.map((e) => ItemEntity.fromEntity(e)).toList());
  }
  Map<String, dynamic> toJson() => {
        'items': items?.map((e) => e.toJson()).toList(),
      };
}
