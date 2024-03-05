import 'package:aellpr/configurations/firebase/firebase_exception/firebase_exception.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class UserFirebaseAuthentication extends GetxController {
  // final phoneNumber = TextEditingController();
  //-- Variables
  final auth = FirebaseAuth.instance;
  User? get authUser => auth.currentUser;

  //-- Create Users
  Future<UserCredential> createUser(String email, String password) async {
    try {
      return await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw CustomFirebaseAuthException(e.code).message;
    } catch (e) {
      throw "somethng went wrong";
    }
  }

  //-- login Users
  Future<UserCredential> loginUsers(String email, String password) async {
    try {
      return await auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw CustomFirebaseAuthException(e.code).message;
    } catch (e) {
      throw "somethng went wrong";
    }
  }

  // -- User Logout
  Future<void> userLogout() async {
    try {
      await auth.signOut();
    } on FirebaseAuthException catch (e) {
      throw CustomFirebaseAuthException(e.code).message;
    } catch (e) {
      throw "somethng went wrong";
    }
  }

  //-- Password Reset
  Future<void> forgetPassword(String email) async {
    try {
      await auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw CustomFirebaseAuthException(e.code).message;
    } catch (e) {
      throw "ops something went wrong";
    }
  }
}
