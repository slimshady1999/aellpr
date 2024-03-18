import 'package:aellpr/configurations/firebase/firebaseAuth/firebaseAuth.dart';
import 'package:aellpr/configurations/firebase/firebase_exception/firebase_exception.dart';
import 'package:aellpr/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class UserCloudDatabase extends GetxController {
  //-- creating firebase Cloud firestore db
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final controller = Get.put(UserFirebaseAuthentication());

  //-- Function to store users data to cloud firestore;
  Future<void> storeVendorData(UserModel users) async {
    try {
      await _db.collection("Users").doc(users.id).set(users.toJson());
    } on FirebaseException catch (e) {
      throw CustomFirebaseAuthException(e.code).message;
    } on FormatException catch (e) {
      throw FormatException(e.message);
    } catch (e) {
      throw "Ops Something went wrong";
    }
  }

  //-- Fetch users data
  Future<UserModel> fetchUsersData() async {
    try {
      final documentSnapshot =
          await _db.collection("Users").doc(controller.authUser?.uid).get();

      if (documentSnapshot.exists) {
        return UserModel.fromSnapshot(documentSnapshot);
      } else {
        return UserModel.emptyUser();
      }
    } on FirebaseException catch (e) {
      throw CustomFirebaseAuthException(e.code).message;
    } on FormatException catch (e) {
      throw FormatException(e.message);
    } catch (e) {
      throw "Ops something went wrong";
    }
  }

  //-- Update users data
  Future<void> updateUserData(UserModel updateUser) async {
    try {
      await _db
          .collection("Vendor Account")
          .doc(updateUser.id)
          .update(updateUser.toJson());
    } on FirebaseException catch (e) {
      throw CustomFirebaseAuthException(e.code).message;
    } on FormatException catch (e) {
      throw FormatException(e.message);
    } catch (e) {
      throw "Ops something went wrong";
    }
  }

  //-- Update specific field in users data
  Future<void> updateUserSpecificField(Map<String, dynamic> json) async {
    try {
      await _db
          .collection("Vendor Account")
          .doc(controller.authUser?.uid)
          .update(json);
    } catch (e) {
      throw "ops something went wrong";
    }
  }

  //-- Delete User Data
  Future<void> deleteUserData(UserModel usersData) async {
    try {
      await _db.collection("Vendor Account").doc(usersData.id).delete();
    } on FirebaseException catch (e) {
      throw CustomFirebaseAuthException(e.code).message;
    } on FormatException catch (e) {
      throw FormatException(e.message);
    } catch (e) {
      throw "Ops something went wrong";
    }
  }
}
