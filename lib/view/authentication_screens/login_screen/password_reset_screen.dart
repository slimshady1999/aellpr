import 'package:aellpr/configurations/validations/form_validation.dart';
import 'package:aellpr/controllers/auth_controllers/forgot_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordResetPage extends StatelessWidget {
  const PasswordResetPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgotPasswordController());
    return Scaffold(
      body: SafeArea(
          child: Form(
        key: controller.passwordResetKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Lottie.asset("assets/lottie/loading.json"),

            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 25),
                    child: CircleAvatar(
                        backgroundColor: const Color(0xFFd2cdcd),
                        radius: 20,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_back))),
                  ),
                  const Text("Reset password",
                      style: TextStyle(
                          fontSize: 24.5,
                          color: Colors.black,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 25, left: 20, right: 35),
              child: Text(
                  textAlign: TextAlign.start,
                  "Enter the email associated with your account and we'll send an email with instructions to reset your password.",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.5,
                      color: Color.fromARGB(255, 75, 75, 75))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 50, right: 20),
              child: TextFormField(
                expands: false,
                // expands: false,
                controller: controller.emailResetController,
                keyboardType: TextInputType.emailAddress,
                validator: (value) => FormValidation.emailValidate(value),
                decoration: InputDecoration(
                    fillColor: const Color.fromARGB(255, 236, 235, 235),
                    filled: true,
                    hintText: "Email",
                    prefixIcon: const Icon(Icons.mail),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none)),
              ),
            ),

            //-- Button
            Container(
              margin: const EdgeInsets.only(left: 25, right: 25, top: 35),
              height: 55,
              width: MediaQuery.of(context).size.width,
              child: Material(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(20),
                child: InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () {
                    controller.sendPasswordReset();
                  },
                  child: Center(
                    child: Text(
                      "Continue",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.white, fontSize: 17),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
