import 'package:fruit_hub/Core/helper/get_currency.dart';
import 'package:fruit_hub/Features/Checkout/domain/entites/order_entity.dart';

import 'details.dart';

class Amount {
  String? total;
  String? currency;
  Details? details;

  Amount({this.total, this.currency, this.details});

  Map<String, dynamic> toJson() => {
        'total': total,
        'currency': currency,
        'details': details?.toJson(),
      };
  factory Amount.fromEntity(OrderEntity entity) {
    return Amount(
      total: entity.calculateTotalPriceAfterDiscountAndShipping().toString(),
      currency: getcurrency(),
      details: Details.fromEntity(entity),
    );
  }
}
