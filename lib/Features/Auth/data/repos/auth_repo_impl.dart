import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/Constant.dart';
import 'package:fruit_hub/Core/errors/exceptions.dart';
import 'package:fruit_hub/Core/errors/failures.dart';
import 'package:fruit_hub/Core/services/database_service.dart';
import 'package:fruit_hub/Core/services/firebase_auth_service.dart';
import 'package:fruit_hub/Core/services/shared_preferences_singelton.dart';
import 'package:fruit_hub/Core/utils/backend_endpoint.dart';
import 'package:fruit_hub/Features/Auth/data/models/user_model.dart';
import 'package:fruit_hub/Features/Auth/domain/entites/user_entity.dart';
import 'package:fruit_hub/Features/Auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  final DataBaseService dataBaseService;

  AuthRepoImpl({
    required this.firebaseAuthService,
    required this.dataBaseService,
  });
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
          email: email, password: password);
      var userEntity = UserEntity(name: name, email: email, uId: user.uid);
      await addUserData(user: userEntity);
      return right(userEntity);
    } on CustomExceptions catch (e) {
      await deleteUser(user);
      return left(ServerFailure(e.message));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  Future<void> deleteUser(User? user) async {
    if (user != null) {
      await firebaseAuthService.deleteUser();
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signinwithEmailAndPassword(
      String email, String password) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
          email: email, password: password);
      var userEntity = await getUserData(uid: user.uid);
      await saveUserData(user: userEntity);
      return right(userEntity);
    } on CustomExceptions catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    User? user;
    try {
      var user = await firebaseAuthService.signInWithGoogle();
      var userEntity = UserModel.fromFirebaseUser(user);
      var isUserExist = await dataBaseService.checkIfDataexists(
          path: BackendEndpoint.isUserExist, documentId: user.uid);
      if (isUserExist) {
        await getUserData(uid: user.uid);
      } else {
        await addUserData(user: userEntity);
      }
      await saveUserData(user: userEntity);

      return right(userEntity);
    } on CustomExceptions catch (e) {
      deleteUser(user);
      return left(ServerFailure(e.message));
    } catch (e) {
      deleteUser(user);
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    try {
      var user = await firebaseAuthService.signInWithFacebook();
      return right(UserModel.fromFirebaseUser(user));
    } catch (e) {
      debugPrint(e.toString());
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future addUserData({required UserEntity user}) async {
    await dataBaseService.addData(
        path: BackendEndpoint.addUserData,
        data: UserModel.fromEntity(user).toMap(),
        documentId: user.uId);
  }

  @override
  Future<UserEntity> getUserData({required String uid}) async {
    var userdata = await dataBaseService.getData(
        path: BackendEndpoint.getUserData, documentId: uid);

    return UserModel.fromjson(userdata);
  }

  @override
  Future saveUserData({required UserEntity user}) async {
    // TODO: implement saveUserData
    var jsonData = jsonEncode(UserModel.fromEntity(user).toMap());
    await Prefs.setString(KuserData, jsonData);
  }
}
