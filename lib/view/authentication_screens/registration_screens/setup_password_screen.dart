import 'package:aellpr/configurations/custom_snackbars/custom_snackbar.dart';
import 'package:aellpr/configurations/validations/form_validation.dart';
import 'package:aellpr/controllers/auth_controllers/signup_controller.dart';
import 'package:aellpr/view/user_dashboard/profile_management/nin_verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SetUpPasswordScreen extends StatelessWidget {
  const SetUpPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: controller.passwordKey,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  //  height: MediaQuery.of(context).size.height / 2.8,
                  width: MediaQuery.of(context).size.width,
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25, top: 35),
                          child: Text(
                            "Setup Password",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 25, top: 10),
                          child: Text(
                              "Please create a secured password including the criteria below..",
                              style: Theme.of(context).textTheme.bodySmall),
                        ),

                        //-- First Name form
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, left: 25, right: 25),
                          child: SizedBox(
                            height: 57,
                            child: TextFormField(
                              controller: controller.password,
                              validator: (value) =>
                                  FormValidation.passwordVerification(value),
                              obscureText: controller.showPassword.value,
                              decoration: InputDecoration(
                                  filled: true,
                                  hintText: "Password",
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                          color: const Color.fromARGB(
                                              255, 146, 145, 145)),
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        controller.showPassword.value =
                                            !controller.showPassword.value;
                                      },
                                      icon: Icon(controller.showPassword.value
                                          ? Icons.password_rounded
                                          : Icons.panorama_fish_eye_sharp)),
                                  fillColor: const Color(0xFFede9e9),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(20))),
                            ),
                          ),
                        ),

                        //-- Last Name form
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 22, left: 25, right: 25),
                          child: SizedBox(
                            height: 57,
                            child: TextFormField(
                              controller: controller.confirmPassword,
                              validator: (value) =>
                                  FormValidation.passwordVerification(value),
                              obscureText: controller.showPassword.value,
                              decoration: InputDecoration(
                                  filled: true,
                                  hintText: "Confirm Password",
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        controller.showPassword.value =
                                            !controller.showPassword.value;
                                      },
                                      icon: Icon(controller.showPassword.value
                                          ? Icons.password_rounded
                                          : Icons.panorama_fish_eye_sharp)),
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                          color: const Color.fromARGB(
                                              255, 146, 145, 145)),
                                  fillColor: const Color(0xFFede9e9),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(20))),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 30),
                          child: SizedBox(
                            // height: 40,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Text("Must be at least 8 characters",
                                    style:
                                        Theme.of(context).textTheme.bodySmall),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: SizedBox(
                                    height: 3.5,
                                    width: 70,
                                    child: LinearProgressIndicator(
                                      borderRadius: BorderRadius.circular(5),
                                      value: 0.3,
                                      color: Colors.red,
                                      backgroundColor: const Color(0xFFe8dddd),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //-- Bottom Buttons
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color(0xFFd2cdcd),
                        radius: 25,
                        child: IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              size: 25,
                            )),
                      ),

                      //-- Next Button
                      SizedBox(
                        height: 50,
                        width: 100,
                        child: Material(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(30),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(30),
                            onTap: () {
                              if (controller.passwordKey.currentState!
                                      .validate() ||
                                  controller.password.text.trim() ==
                                      controller.confirmPassword.text.trim()) {
                                Get.to(() => const NinVerificationScreen());
                              } else {
                                throw CustomSnackBar.errorSnackBar(
                                    title: "Password does not match");
                              }
                            },
                            child: Center(
                              child: Text(
                                "Next",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(fontSize: 13),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
