import 'package:aellpr/configurations/validations/form_validation.dart';
import 'package:aellpr/controllers/auth_controllers/signup_controller.dart';
import 'package:aellpr/view/user_dashboard/profile_management/upload_picture_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NinVerificationScreen extends StatelessWidget {
  const NinVerificationScreen({super.key});

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
                  key: controller.ninKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 35),
                        child: Text(
                          "Verify your NIN",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 10),
                        child: Text(
                            "Please enter your NIN for verification. Note your information is safe with us.",
                            style: Theme.of(context).textTheme.bodySmall),
                      ),

                      //-- First Name form
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 30, left: 25, right: 25),
                        child: SizedBox(
                          height: 57,
                          child: TextFormField(
                            controller: controller.ninController,
                            keyboardType: TextInputType.number,
                            validator: (value) =>
                                FormValidation.ninVerification(value),
                            decoration: InputDecoration(
                                filled: true,
                                hintText: "Enter your NIN",
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

                      //-- Skip Button
                      const SizedBox(height: 17),
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
                            if (controller.ninKey.currentState!.validate()) {
                              Get.to(() => const UploadDp());
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
