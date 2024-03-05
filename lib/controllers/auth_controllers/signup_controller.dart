import 'package:aellpr/configurations/custom_snackbars/custom_snackbar.dart';
import 'package:aellpr/configurations/firebase/cloud_firestore/cloud_firestore.dart';
import 'package:aellpr/configurations/firebase/firebaseAuth/firebaseAuth.dart';
import 'package:aellpr/configurations/success_screen/success_screen.dart';
import 'package:aellpr/configurations/loading_screen/loading_screen.dart';
import 'package:aellpr/controllers/network_controller/network_controller.dart';
import 'package:aellpr/models/user_model.dart';
import 'package:aellpr/view/authentication_screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SignupController extends GetxController {
  //-- Variables
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final email = TextEditingController();
  final phoneNumber = TextEditingController();
  final ninController = TextEditingController();
  final password = TextEditingController();
  var otpNumbers = TextEditingController();
  final confirmPassword = TextEditingController();
  GlobalKey<FormState> fullnameKey = GlobalKey<FormState>();
  GlobalKey<FormState> emailKey = GlobalKey<FormState>();
  GlobalKey<FormState> phoneNumberKey = GlobalKey<FormState>();
  GlobalKey<FormState> passwordKey = GlobalKey<FormState>();
  GlobalKey<FormState> ninKey = GlobalKey<FormState>();
  final userDataStorage = GetStorage();

  var showPassword = false.obs;
  var controller = Get.put(UserFirebaseAuthentication());

  //-- Signup
  Future<void> signup() async {
    try {
      //-- start loading
      LoadingScreen.openLoadingDialog();

      //-- check internet connection
      await NetworkManagement().isConnected();
      LoadingScreen.stopLoading();
      // if (connection) {
      //   return;
      // } else {
      //   LoadingScreen.stopLoading();
      // }

      // //-- check form validtion
      // if (!fullnameKey.currentState!.validate()) {
      //   //-- stop loading
      //   LoadingScreen.stopLoading();
      //   return;
      // }

      //-- check otp verification status

      //-- create user with firebase Auth
      final newUserData = await UserFirebaseAuthentication()
          .createUser(email.text.trim(), password.text.trim());

      //--  Store users data to cloud firestore
      var newUser = UserModel(
          id: newUserData.user!.uid,
          firstName: firstName.text.trim(),
          lastName: lastName.text.trim(),
          email: email.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          nin: ninController.text.trim(),
          password: password.text.trim(),
          dp: '');

      await UserCloudDatabase().storeVendorData(newUser);

      //-- Stop loading animation
      LoadingScreen.stopLoading();

      //-- show success message
      CustomSnackBar.successfulSnackBar(
          title: "Congratulations",
          message: "Your account has been created successfully");

      //-- successful screen comfirmation
      Get.offAll(() => SuccessfulScreen(
            animationImage: "assets/lottie/lottie1.json",
            title: "Welcome To Aellpr",
            text1: "You have successfully",
            text2: "Created your account",
            buttonText: "Get Started",
            onPressed: () {
              Get.offAll(const UsersLoginScreen());
              userDataStorage.write("id", "signup");
            },
          ));
    } catch (e) {
      //-- Stop Loading
      LoadingScreen.stopLoading();

      //-- show some error
      CustomSnackBar.errorSnackBar(title: "Oh Snap", message: e.toString());
    }
  }
}
