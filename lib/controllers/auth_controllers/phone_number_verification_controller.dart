import 'package:aellpr/controllers/auth_controllers/signup_controller.dart';
import 'package:aellpr/view/authentication_screens/registration_screens/phone_otp_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class PhonenumberVerificationController extends GetxController {
  //-- phone number verification
  final auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    verifyUserPhonenumber();
  }

  Future<dynamic> verifyUserPhonenumber() async {
    final controller = Get.put(SignupController());
    try {
      await auth.verifyPhoneNumber(
        phoneNumber: controller.phoneNumber.text.trim(),
        verificationCompleted: (PhoneAuthCredential credential) async {
          // Sign the user in (or link) with the auto-generated credential
          // await auth.signInWithCredential(credential);
        },
        verificationFailed: (FirebaseAuthException e) {
          Get.snackbar("Something went wrong", "");
          if (e.code == 'invalid-phone-number') {
            if (kDebugMode) {
              print('The provided phone number is not valid.');
            }
          }
        },
        codeSent: (String verificationId, int? resendToken) {
          Get.to(() => PhoneNumberOtpScreen(
                phoneNumber: controller.phoneNumber.text.trim(),
                verificationId: verificationId,
              ));
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    } catch (e) {}
  }
}
