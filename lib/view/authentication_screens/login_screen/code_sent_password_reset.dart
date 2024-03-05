import 'package:aellpr/controllers/auth_controllers/forgot_password_controller.dart';
import 'package:aellpr/view/authentication_screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class CodeSentPasswordResetScreen extends GetView<ForgotPasswordController> {
  const CodeSentPasswordResetScreen({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgotPasswordController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.cancel, color: Colors.black))
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Lottie.asset("assets/lottie/email.json",
                    fit: BoxFit.cover)),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
              child: Text(email,
                  style: const TextStyle(color: Colors.black, fontSize: 16.5)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
              child: Text("Password Reset Email Sent",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 25)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Text(
                  textAlign: TextAlign.center,
                  "Your account security is our priority, we sent an email reset link to your email, please check and reset your password",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontSize: 15)),
            ),

            //-- Proceed Button
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                height: 55,
                width: MediaQuery.of(context).size.width,
                child: Material(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(16),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(16),
                    onTap: () {
                      Get.offAll(() => const UsersLoginScreen());
                    },
                    child: Center(
                      child: Text(
                        "Proceed",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: Colors.white, fontSize: 17),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //-- Resend email Button
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                height: 55,
                width: MediaQuery.of(context).size.width,
                child: Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(16),
                    onTap: () {
                      controller.resendPasswordLink();
                    },
                    child: Center(
                      child: Text(
                        "Resend Email",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: Colors.black, fontSize: 17),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
