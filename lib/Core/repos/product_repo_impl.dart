import 'package:dartz/dartz.dart';
import 'package:fruit_hub/Core/entities/product_entitey.dart';
import 'package:fruit_hub/Core/errors/failures.dart';
import 'package:fruit_hub/Core/models/product_model.dart';
import 'package:fruit_hub/Core/repos/product_repo.dart';
import 'package:fruit_hub/Core/services/database_service.dart';
import 'package:fruit_hub/Core/utils/backend_endpoint.dart';

class ProductRepoImpl extends ProductRepo {
  final DataBaseService dataBaseService;

  ProductRepoImpl({required this.dataBaseService});

  @override
  Future<Either<Failure, List<ProductEntitey>>> getProducts() async {
    try {
      var data = await dataBaseService.getData(
          path: BackendEndpoint.getProducts) as List<Map<String, dynamic>>;
      List<ProductEntitey> products =
          data.map((e) => ProductModel.fromjson(e).toEntity()).toList();
      return right(products);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ProductEntitey>>> getBestSelleingProducts() {
    // TODO: implement getBestSelleingProducts
    throw UnimplementedError();
  }
}
