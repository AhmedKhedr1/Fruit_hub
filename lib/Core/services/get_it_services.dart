import 'package:dartz/dartz.dart';
import 'package:fruit_hub/Core/repos/orders_repo/orders_repo.dart';
import 'package:fruit_hub/Core/repos/orders_repo/orders_repo_impl.dart';
import 'package:fruit_hub/Core/repos/product_repo/product_repo.dart';
import 'package:fruit_hub/Core/repos/product_repo/product_repo_impl.dart';
import 'package:fruit_hub/Core/services/database_service.dart';
import 'package:fruit_hub/Core/services/firebase_auth_service.dart';
import 'package:fruit_hub/Core/services/firestore_service.dart';
import 'package:fruit_hub/Features/Auth/data/repos/auth_repo_impl.dart';
import 'package:fruit_hub/Features/Auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetit() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<DataBaseService>(FirestoreService());
  getIt.registerSingleton<AuthRepo>(AuthRepoImpl(
    firebaseAuthService: getIt<FirebaseAuthService>(),
    dataBaseService: getIt<DataBaseService>(),
  ));
  getIt.registerSingleton<ProductRepo>(ProductRepoImpl(
    dataBaseService: getIt<DataBaseService>(),
  ));
  getIt.registerSingleton<OrdersRepo>(
    OrdersRepoImpl(firestoreService: getIt<DataBaseService>()),
  );
}
