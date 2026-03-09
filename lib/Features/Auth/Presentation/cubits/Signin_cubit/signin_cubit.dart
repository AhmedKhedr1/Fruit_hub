import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_hub/Features/Auth/domain/entites/user_entity.dart';
import 'package:fruit_hub/Features/Auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninInitial());
  AuthRepo authRepo;

  Future<void> signinwithEmailAndPassword(String email, String password) async {
    emit(Signinloading());
    var result = await authRepo.signinwithEmailAndPassword(email, password);
    result.fold(
      (failure) => emit(
        SigninFailure(message: failure.message),
      ),
      (userEntity) => emit(
        SigninSucces(userEntity: userEntity),
      ),
    );
  }

  Future<void> signInWithGoogle() async {
    emit(Signinloading());
    var result = await authRepo.signInWithGoogle();
    result.fold(
      (failure) => emit(SigninFailure(message: failure.message)),
      (userEntity) => emit(SigninSucces(userEntity: userEntity)),
    );
  }

  Future<void> signInWithFacebook() async {
    emit(Signinloading());
    var result = await authRepo.signInWithFacebook();
    result.fold(
      (failure) => emit(SigninFailure(message: failure.message)),
      (userEntity) => emit(SigninSucces(userEntity: userEntity)),
    );
  }
}
