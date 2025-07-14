import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Features/Auth/Domain/Repos/Auth_Repo.dart';
import 'package:fruit_hub/Features/Auth/Domain/entites/User_Entity.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.authRepo) : super(SignInInitial());
  final AuthRepo authRepo;
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    emit(SignInLoading());
    final result = await authRepo.SignInWithEmailandPassword(email, password);
    return result.fold(
      (failure) => emit(SignInFailure(message: failure.message)),
      (userEntity) => emit(SignInSuccess(user: userEntity)),
    );
  }
}
