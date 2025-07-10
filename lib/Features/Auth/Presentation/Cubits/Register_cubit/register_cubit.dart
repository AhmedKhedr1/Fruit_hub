import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Features/Auth/Domain/Repos/Auth_Repo.dart';
import 'package:fruit_hub/Features/Auth/Domain/entites/User_Entity.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.authRepo) : super(RegisterInitial());
  final AuthRepo authRepo;

  Future<void> CreateUserWithEmailAndPassword(
      String email, String password, String name) async {
    emit(
      Registerloading(),
    );
    final result =
        await authRepo.CreateUserWithEmailandPassword(email, password, name);
    result.fold(
      (Failure) => emit(
        RegisterFailure(message: Failure.message),
      ),
      (userEntity) => emit(
        RegisterSuccess(userEntity: userEntity),
      ),
    );
  }
}
