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
        throw CustomException(message: 'كلمة المرور ضعيفة جدًا');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
            message: 'يوجد حساب مسجل بالفعل بهذا البريد الإلكتروني.');
      } else {
        throw CustomException(
            message: 'حدث خطأ، يرجى المحاولة مرة أخرى لاحقًا');
      }
    } catch (e) {
      throw CustomException(message: 'حدث خطأ، يرجى المحاولة مرة أخرى لاحقًا');
    }
  }

  Future<User> SignInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw CustomException(
            message: 'لا يوجد حساب مسجل بهذا البريد الإلكتروني.');
      } else if (e.code == 'wrong-password') {
        throw CustomException(message: 'كلمة المرور غير صحيحة.');
      } else {
        throw CustomException(
            message: 'حدث خطأ، يرجى المحاولة مرة أخرى لاحقًا');
      }
    } catch (e) {
      throw CustomException(message: 'حدث خطأ، يرجى المحاولة مرة أخرى لاحقًا');
    }
  }
}
