import 'package:fruit_hub/Core/services/Firebase_Auth_Service.dart';
import 'package:fruit_hub/Features/Auth/Domain/Repos/Auth_Repo.dart';
import 'package:fruit_hub/Features/Auth/data/Repos/AuthRepo_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupGetIt() {
  getIt.registerSingleton<FirebaseAuthService>(
    FirebaseAuthService(),
  );
  getIt.registerSingleton<AuthRepo>(
    AuthrepoImpl(
      firebaseauthservice: getIt<FirebaseAuthService>(),
    ),
  );
}
