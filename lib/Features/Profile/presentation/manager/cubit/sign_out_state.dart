part of 'sign_out_cubit.dart';

sealed class SignOutState {}

final class SignOutInitial extends SignOutState {}

final class SignOutSuccess extends SignOutState {}

final class SignOutloading extends SignOutState {}

final class SignOutFailure extends SignOutState {
  final String message;

  SignOutFailure(this.message);
}
