import 'package:dartz/dartz.dart';
import 'package:fruit_hub/Core/errors/Failures.dart';
import 'package:fruit_hub/Features/Auth/Domain/entites/User_Entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> CreateUserWithEmailandPassword(
    String email, String password,String name);
}
