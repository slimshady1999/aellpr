import 'package:aellpr/configurations/custom_snackbars/custom_snackbar.dart';
import 'package:aellpr/configurations/firebase/firebaseAuth/firebaseAuth.dart';
import 'package:aellpr/configurations/loading_screen/loading_screen.dart';
import 'package:aellpr/view/user_dashboard/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  //-- Variables

  final email = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  // GlobalKey<FormState> loginphoneNumberKey = GlobalKey<FormState>();
  // GlobalKey<FormState> loginPasswordKey = GlobalKey<FormState>();
  final userDataStorage = GetStorage();
  var hidePassword = true.obs;
  var controller = Get.put(UserFirebaseAuthentication());
  var rememberMe = true.obs;

  //-- login
  Future<void> login() async {
    try {
      //-- start loading
      LoadingScreen.openLoadingDialog();

      // //-- check internet connection
      // await NetworkManagement().isConnected();
      // LoadingScreen.stopLoading();

      //-- check form validtion
      if (!loginKey.currentState!.validate()) {
        //-- stop loading
        LoadingScreen.stopLoading();
        return;
      }

      //-- check otp verification status

      //-- create user with firebase Auth
      // ignore: unused_local_variable
      await UserFirebaseAuthentication()
          .loginUsers(email.text.trim(), password.text.trim());

      //-- Stop loading animation
      LoadingScreen.stopLoading();

      //-- show success message
      CustomSnackBar.successfulSnackBar(
          title: "Login Successful", message: "Account logged in");

      //-- successful screen comfirmation
      userDataStorage.write("id", "login");
      Get.offAll(() => const CustomBottomBar());
    } catch (e) {
      //-- Stop Loading
      LoadingScreen.stopLoading();

      //-- show some error
      CustomSnackBar.errorSnackBar(title: "Oh Snap", message: e.toString());
    }
  }
}
