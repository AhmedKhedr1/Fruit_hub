import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/entities/product_entitey.dart';
import 'package:fruit_hub/Features/cart/domain/entities/cart_entitey.dart';
import 'package:fruit_hub/Features/cart/domain/entities/cart_item_entitey.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  CartEntitey cartEntitey = CartEntitey(cartItems: []);
  void addProduct(ProductEntitey product) {
    var cartitem = cartEntitey.getCartItem(product);
    bool isProductExist = cartEntitey.isExist(product);
    if (isProductExist) {
      cartitem.increasCount();
    } else {
      cartEntitey.addCartItem(cartitem);
    }
    emit(CartProductAdded());
  }

  void RemoveCartItem(CartItemEntitey CartItemEntitey) {
    cartEntitey.removeCartItem(CartItemEntitey);
    emit(CartItemRemoved());
  }
}
