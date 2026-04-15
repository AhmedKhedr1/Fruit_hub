import 'package:flutter_bloc/flutter_bloc.dart' show Cubit;
import 'package:fruit_hub/Features/cart/domain/entities/cart_item_entitey.dart';

part 'cart_items_state.dart';

class CartItemsCubit extends Cubit<CartItemsState> {
  CartItemsCubit() : super(CartItemsInitial());
  void cartItemUpdated(CartItemEntitey cartItemEntitey) {
    emit(CartItemsUpdated(cartItemEntitey: cartItemEntitey));
  }
}
