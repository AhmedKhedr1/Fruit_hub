import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hub/Core/errors/exceptions.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CustomExceptions(message: S.current.weakPassword);
      } else if (e.code == 'email-already-in-use') {
        throw CustomExceptions(message: S.current.emailAlreadyInUse);
      } else if (e.code == 'invalid-email') {
        throw CustomExceptions(message: S.current.invalidEmail);
      } else {
        throw CustomExceptions(message: S.current.unknownError);
      }
    } catch (e) {
      throw CustomExceptions(message: e.toString());
    }
  }

  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw CustomExceptions(message: S.current.userNotFound);
      } else if (e.code == 'wrong-password') {
        throw CustomExceptions(message: S.current.wrongPassword);
      } else if (e.code == 'network-request-failed') {
        throw CustomExceptions(message: S.current.networkrequestfailed);
      } else {
        throw CustomExceptions(message: S.current.unknownError);
      }
    } catch (e) {
      throw CustomExceptions(message: e.toString());
    }
  }

  Future<User> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
  }
}
