part of 'register_cubit.dart';

sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}
final class Registerloading extends RegisterState {}
final class RegisterSuccess extends RegisterState {
  final UserEntity userEntity;

  RegisterSuccess({required this.userEntity});
}
final class RegisterFailure extends RegisterState {
  final String message;

  RegisterFailure({required this.message});
}