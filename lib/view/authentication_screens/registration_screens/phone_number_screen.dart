import 'package:aellpr/configurations/validations/form_validation.dart';
import 'package:aellpr/controllers/auth_controllers/signup_controller.dart';
import 'package:aellpr/view/authentication_screens/registration_screens/phone_otp_screen.dart';
import 'package:aellpr/view/user_dashboard/profile_management/upload_picture_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:country_code_picker/country_code_picker.dart';

class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2.8,
                width: MediaQuery.of(context).size.width,
                child: Form(
                  key: controller.phoneNumberKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 35),
                        child: Text(
                          "Enter your Phone Number",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 10),
                        child: Text(
                            "Enter your phone number to receive a verification code for sign up..",
                            style: Theme.of(context).textTheme.bodySmall),
                      ),

                      //-- First Name form
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        // height: 200,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(left: 5.0),
                                height: 55,
                                width: 115,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFede9e9),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const CountryCodePicker(
                                  onChanged: print,
                                  initialSelection: 'NG',
                                  favorite: ['+234', 'NGN'],
                                  showCountryOnly: false,
                                  flagWidth: 20,
                                  showOnlyCountryWhenClosed: false,
                                  alignLeft: false,
                                )),

                            //-- Form Number form
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 5.0, right: 10),
                                child: TextFormField(
                                  keyboardType: TextInputType.phone,
                                  controller: controller.phoneNumber,
                                  validator: (value) =>
                                      FormValidation.phoneNumberValidate(value),
                                  decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.only(
                                        // top: 30,
                                        left: 10,
                                      ),
                                      filled: true,
                                      hintText: "phone number",
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
                            )
                          ],
                        ),
                      ),

                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {
                                Get.to(() => const UploadDp());
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "Skip!",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          color: Colors.red,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Text(
                              "I will verify later",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      fontSize: 16),
                            ),
                          ],
                        ),
                      )
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
                            if (controller.phoneNumberKey.currentState!
                                .validate()) {
                              Get.to(() => PhoneNumberOtpScreen(
                                    phoneNumber:
                                        controller.phoneNumber.text.trim(),
                                    verificationId: '',
                                  ));
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
    );
  }
}
