part of 'cart_items_cubit.dart';

sealed class CartItemsState {
  const CartItemsState();
}

final class CartItemsInitial extends CartItemsState {}

final class CartItemsUpdated extends CartItemsState {
  final CartItemEntitey cartItemEntitey;

  CartItemsUpdated({required this.cartItemEntitey});
}
