part of 'signin_cubit.dart';

@immutable
sealed class SigninState {}

final class SigninInitial extends SigninState {}

final class Signinloading extends SigninState {}

final class SigninFailure extends SigninState {
  final String message;

  SigninFailure({required this.message});
}

final class SigninSucces extends SigninState {
  final UserEntity userEntity;

  SigninSucces({required this.userEntity});
}
