import 'package:dartz/dartz.dart';
import 'package:fruit_hub/Core/entities/product_entitey.dart';
import 'package:fruit_hub/Core/errors/failures.dart';

abstract class ProductRepo {

Future<Either<Failure,List<ProductEntitey>>>getProducts();
Future<Either<Failure,List<ProductEntitey>>> getBestSelleingProducts();
}