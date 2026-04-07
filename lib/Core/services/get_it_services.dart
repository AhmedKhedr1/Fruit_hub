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
}
