import 'package:bloc/bloc.dart';
import 'package:fruit_hub/Features/Auth/domain/entites/user_entity.dart';
import 'package:fruit_hub/Features/Auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final AuthRepo authRepo;
  SignupCubit(this.authRepo) : super(SignupInitial());

  Future<void> CreateUserWithEmailAndPassword(
      String email, String password, String name) async {
    emit(SignupLoading());
    var result =
        await authRepo.createUserWithEmailAndPassword(email, password, name);
    result.fold(
      (failure) => emit(
        Signupfailure(message: failure.message),
      ),
      (userEntity) => emit(
        SignupSuccess(userEntity: userEntity),
      ),
    );
  }
}
