import 'package:dartz/dartz.dart';
import 'package:fruit_hub/Core/errors/failures.dart';
import 'package:fruit_hub/Core/repos/orders_repo/orders_repo.dart';
import 'package:fruit_hub/Core/services/database_service.dart';
import 'package:fruit_hub/Core/utils/backend_endpoint.dart';
import 'package:fruit_hub/Features/Checkout/data/models/order_model.dart';
import 'package:fruit_hub/Features/Checkout/domain/entites/order_entity.dart';

class OrdersRepoImpl extends OrdersRepo {
  final DataBaseService firestoreService;

  OrdersRepoImpl({required this.firestoreService});
  @override
  Future<Either<Failure, void>> addOrder(
      {required OrderEntity orderEntity}) async {
    try {
      await firestoreService.addData(
          path: BackendEndpoint.addOrders,
          data: OrderModel.fromentity(orderEntity).tojson());
      return right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
