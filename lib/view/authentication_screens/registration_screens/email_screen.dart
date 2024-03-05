import 'package:aellpr/configurations/validations/form_validation.dart';
import 'package:aellpr/controllers/auth_controllers/signup_controller.dart';
import 'package:aellpr/view/authentication_screens/registration_screens/phone_number_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({super.key});

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
                  key: controller.emailKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 35),
                        child: Text(
                          "Enter your email",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 10),
                        child: Text(
                            "Please enter a valid email address below..",
                            style: Theme.of(context).textTheme.bodySmall),
                      ),

                      //-- First Name form
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 30, left: 25, right: 25),
                        child: TextFormField(
                          controller: controller.email,
                          validator: (value) =>
                              FormValidation.emailValidate(value),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                top: 30,
                                left: 10,
                              ),
                              filled: true,
                              hintText: "Your email",
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
                            if (controller.emailKey.currentState!.validate()) {
                              Get.to(() => const PhoneNumberScreen());
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
