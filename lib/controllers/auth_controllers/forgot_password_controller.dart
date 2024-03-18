import 'package:aellpr/configurations/custom_snackbars/custom_snackbar.dart';
import 'package:aellpr/configurations/firebase/firebaseAuth/firebaseAuth.dart';
import 'package:aellpr/configurations/firebase/firebase_exception/firebase_exception.dart';
import 'package:aellpr/configurations/loading_screen/loading_screen.dart';
import 'package:aellpr/controllers/network_controller/network_controller.dart';
import 'package:aellpr/view/authentication_screens/login_screen/code_sent_password_reset.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  //-- variables
  final emailResetController = TextEditingController();
  GlobalKey<FormState> passwordResetKey = GlobalKey<FormState>();

  //-- Initialize Controller

  //-- Send password resend function
  Future<void> sendPasswordReset() async {
    try {
      //-- show loading Screen
      LoadingScreen.openLoadingDialog();

      //-- check internet connection
      await NetworkManagement().isConnected();

      //-- check for field validation
      if (!passwordResetKey.currentState!.validate()) {
        LoadingScreen.stopLoading();
        return;
      }

      //-- call firebaseAuth passwordReset code
      await UserFirebaseAuthentication()
          .forgetPassword(emailResetController.text.trim());

      //--  Show success snackbar
      CustomSnackBar.successfulSnackBar(
          title: "Password Reset Link Activated",
          message: " This will take some seconds");

      Get.to(
          CodeSentPasswordResetScreen(email: emailResetController.text.trim()));
    } catch (e) {
      LoadingScreen.stopLoading();

      throw "Ops something went wrong";
    }
  }

  //-- resend password

  Future<void> resendPasswordLink() async {
    try {
      //-- show loading Screen
      LoadingScreen.openLoadingDialog();

      //-- check internet connection
      await NetworkManagement().isConnected();

      //-- call firebaseAuth passwordReset code
      await UserFirebaseAuthentication()
          .forgetPassword(emailResetController.text.trim());

      //--  Show success snackbar
      CustomSnackBar.successfulSnackBar(
          title: "Password Reset Link Activated",
          message: " This will take some seconds");

      // Get.to(const PasswordResetPage());
    } on FirebaseAuthException catch (e) {
      LoadingScreen.stopLoading();
      throw CustomFirebaseAuthException(e.code).message;
    } catch (e) {
      //-- stop loading
      LoadingScreen.stopLoading();

      //-- show custom error
      CustomSnackBar.errorSnackBar(
          title: "Ops something went wrong", message: "Something went wrong");
    }
  }
}
