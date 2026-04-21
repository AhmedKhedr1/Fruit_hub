import 'package:fruit_hub/Features/Checkout/data/models/order_product_model.dart';
import 'package:fruit_hub/Features/Checkout/data/models/shipping_address_model.dart';
import 'package:fruit_hub/Features/Checkout/domain/entites/order_entity.dart';

class OrderModel {
  final double totalPrice;
  final String uId;
  final ShippingAddressModel shippingAddressModel;
  final List<OrderProductModel> orderProductModel;
  final String paymentMethod;

  OrderModel(
      {required this.totalPrice,
      required this.uId,
      required this.shippingAddressModel,
      required this.orderProductModel,
      required this.paymentMethod});

  factory OrderModel.fromentity(OrderEntity orderEntity) {
    return OrderModel(
        totalPrice: orderEntity.cartEntitey.calculateTotalPrice(),
        uId: orderEntity.uId,
        shippingAddressModel:
            ShippingAddressModel.fromEntity(orderEntity.shippingAddressEntity),
        orderProductModel: orderEntity.cartEntitey.cartItems
            .map((e) => OrderProductModel.fromEntity(e))
            .toList(),
        paymentMethod: orderEntity.payWihtCash == true ? 'Cash' : 'Paypal');
  }
  tojson() {
    return {
      'totalPrice': totalPrice,
      'uId': uId,
      'shippingAddressModel': shippingAddressModel.tojson(),
      'orderProductModel': orderProductModel.map((e) => e.tojson()).toList(),
      'paymentMethod': paymentMethod
    };
  }
}
