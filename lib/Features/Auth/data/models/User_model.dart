import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hub/Features/Auth/Domain/entites/User_Entity.dart';

class UserModel extends UserEntity {
  UserModel({required super.name, required super.email, required super.uId});
  factory UserModel.fromfirebaseuser(User user) {
    return UserModel(
        name: user.displayName ?? '', email: user.email ?? '', uId: user.uid);
  }
}
