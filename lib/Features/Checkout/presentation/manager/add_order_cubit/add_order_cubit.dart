import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fruit_hub/Core/repos/orders_repo/orders_repo.dart';
import 'package:fruit_hub/Features/Checkout/domain/entites/order_entity.dart';

part 'add_order_state.dart';

class AddOrderCubit extends Cubit<AddOrderState> {
  AddOrderCubit(this.oredersRepo) : super(AddOrderInitial());
  final OrdersRepo oredersRepo;
  void addOrder({required OrderEntity order}) async {
    emit(AddOrderLoading());
    final result = await oredersRepo.addOrder(orderEntity: order);
    result.fold(
      (failure) => emit(AddOrderFailure(errorMessage: failure.message)),
      (success) => emit(AddOrderSuccess()),
    );
  }
}
