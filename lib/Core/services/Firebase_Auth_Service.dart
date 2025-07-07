import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hub/Core/errors/Exception.dart';

class FirebaseAuthService {
  Future<User> CreateUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CustomException(message: 'The password is too weak');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
            message: 'The account already exists for that email.');
      } else {
        throw CustomException(
            message: 'An Error occurred , Please try again later');
      }
    } catch (e) {
      throw CustomException(
          message: 'An Error occurred , Please try again later');
    }
  }
}
