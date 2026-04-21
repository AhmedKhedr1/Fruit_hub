import 'package:dartz/dartz.dart';
import 'package:fruit_hub/Core/errors/failures.dart';
import 'package:fruit_hub/Features/Checkout/domain/entites/order_entity.dart';

abstract class OrdersRepo {
  Future<Either<Failure, void>> addOrder({required OrderEntity orderEntity});
}
