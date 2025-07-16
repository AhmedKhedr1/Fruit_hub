import 'package:dartz/dartz.dart';
import 'package:fruit_hub/Core/errors/Exception.dart';
import 'package:fruit_hub/Core/errors/Failures.dart';
import 'package:fruit_hub/Core/services/Firebase_Auth_Service.dart';
import 'package:fruit_hub/Features/Auth/Domain/Repos/Auth_Repo.dart';
import 'package:fruit_hub/Features/Auth/Domain/entites/User_Entity.dart';
import 'package:fruit_hub/Features/Auth/data/models/USer_model.dart';

class AuthrepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseauthservice;

  AuthrepoImpl({required this.firebaseauthservice});
  @override
  Future<Either<Failure, UserEntity>> CreateUserWithEmailandPassword(
      String email, String password, String name) async {
    try {
      var user = await firebaseauthservice.CreateUserWithEmailAndPassword(
          email: email, password: password);

      return right(UserModel.fromfirebaseuser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> SignInWithEmailandPassword(
      String email, String password) async {
    try {
      var user = await firebaseauthservice.SignInWithEmailAndPassword(
          email: email, password: password);

      return right(UserModel.fromfirebaseuser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> SignInWithGoogle() async {
    try {
      var user = await firebaseauthservice.signInWithGoogle();
      return right(UserModel.fromfirebaseuser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(message: e.message));
    }
  }
}
