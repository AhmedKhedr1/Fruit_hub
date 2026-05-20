import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Features/Auth/domain/repos/auth_repo.dart';

part 'sign_out_state.dart';

class SignOutCubit extends Cubit<SignOutState> {
  SignOutCubit(this.authrepo) : super(SignOutInitial());
  AuthRepo authrepo;
  Future<void> signOut() async {
    emit(SignOutloading());
    try {
      await authrepo.signOut();
      emit(SignOutSuccess());
    } catch (e) {
      emit(SignOutFailure(e.toString()));
    }
  }
}
