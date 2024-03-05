import 'package:aellpr/configurations/validations/form_validation.dart';
import 'package:aellpr/controllers/auth_controllers/login_controller.dart';
import 'package:aellpr/view/authentication_screens/login_screen/password_reset_screen.dart';
import 'package:aellpr/view/authentication_screens/registration_screens/name_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:country_code_picker/country_code_picker.dart';

class UsersLoginScreen extends GetView<LoginController> {
  const UsersLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: controller.loginKey,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    // height: MediaQuery.of(context).size.height / 2.8,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 25, top: 50),
                            child: Align(
                                alignment: Alignment.center,
                                child: Image.asset(
                                    "assets/image/color_icon.png"))),

                        //-- Form
                        Container(
                          margin: const EdgeInsets.only(top: 50),
                          // height: 200,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              //-- country code selection
                              // Container(
                              //     margin: const EdgeInsets.only(left: 5.0),
                              //     height: 55,
                              //     width: 115,
                              //     decoration: BoxDecoration(
                              //       color: const Color(0xFFede9e9),
                              //       borderRadius: BorderRadius.circular(20),
                              //     ),
                              //     child: const CountryCodePicker(
                              //       onChanged: print,
                              //       initialSelection: 'NG',
                              //       favorite: ['+234', 'NGN'],
                              //       showCountryOnly: false,
                              //       flagWidth: 20,
                              //       showOnlyCountryWhenClosed: false,
                              //       alignLeft: false,
                              //     )),

                              //-- phone number form
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30.0, right: 30),
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  controller: controller.email,
                                  validator: (value) =>
                                      FormValidation.emailValidate(value),
                                  decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.only(
                                          top: 31, left: 10),
                                      filled: true,
                                      hintText: "email",
                                      hintStyle: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: const Color.fromARGB(
                                                  255, 146, 145, 145)),
                                      fillColor: const Color(0xFFede9e9),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30.0, right: 30, top: 17),
                                child: TextFormField(
                                  // keyboardType: TextInputType.,
                                  controller: controller.password,
                                  validator: (value) =>
                                      FormValidation.passwordVerification(
                                          value),
                                  obscureText: controller.hidePassword.value,
                                  decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.only(
                                          top: 31, left: 10),
                                      suffixIcon: IconButton(
                                          onPressed: () {
                                            controller.hidePassword.value ==
                                                controller.hidePassword.value;
                                          },
                                          icon: Icon(controller
                                                  .hidePassword.value
                                              ? Icons.password_rounded
                                              : Icons.panorama_fish_eye_sharp)),
                                      filled: true,
                                      hintText: "password",
                                      hintStyle: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: const Color.fromARGB(
                                                  255, 146, 145, 145)),
                                      fillColor: const Color(0xFFede9e9),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                ),
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, left: 15),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Obx(
                                  () => Row(
                                    children: [
                                      Checkbox(
                                          activeColor:
                                              controller.rememberMe.value
                                                  ? Colors.red
                                                  : Colors.white,
                                          checkColor:
                                              controller.rememberMe.value
                                                  ? Colors.red
                                                  : Colors.white,
                                          value: controller.rememberMe.value,
                                          onChanged: (value) {
                                            controller.rememberMe.value ==
                                                    controller.rememberMe.value
                                                ? Colors.red
                                                : Colors.white;
                                          }),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 3.0),
                                        child: Text(
                                          "Remeber Me",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  color: Colors.black,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: TextButton(
                                    onPressed: () {
                                      Get.to(() => const PasswordResetPage());
                                    },
                                    child: Text(
                                      "Forgot Password?",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        //-- Bottom Buttons
                        Container(
                          margin: const EdgeInsets.only(
                              top: 20, left: 25, right: 25),
                          height: 60,
                          width: MediaQuery.of(context).size.width,
                          child: Material(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(30),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(30),
                              onTap: () {
                                controller.login();
                              },
                              child: Center(
                                child: Text(
                                  "Login",
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
                ),

                //-- signup link
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account?",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 3.0),
                            child: GestureDetector(
                                onTap: () {
                                  Get.to(() => const NameScreen());
                                },
                                child: const Text(
                                  "Signup",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
