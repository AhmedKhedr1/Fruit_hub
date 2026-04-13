import 'package:fruit_hub/Core/entities/product_entitey.dart';
import 'package:fruit_hub/Features/cart/domain/entities/cart_item_entitey.dart';

class CartEntitey {
  final List<CartItemEntitey> cartItems;

  CartEntitey({required this.cartItems});

  addCartItem(CartItemEntitey cartItemEntitey) {
    cartItems.add(cartItemEntitey);
  }

  bool isExist(ProductEntitey product) {
    for (var cartitem in cartItems) {
      if (cartitem.productEntity == product) {
        return true;
      }
    }
    return false;
  }

  CartItemEntitey getCartItem(ProductEntitey product) {
    for (var cartitem in cartItems) {
      if (cartitem.productEntity == product) {
        return cartitem;
      }
    }
    return CartItemEntitey(productEntity: product, count: 1);
  }
}
