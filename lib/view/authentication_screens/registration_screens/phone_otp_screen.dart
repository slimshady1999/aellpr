import 'package:aellpr/controllers/auth_controllers/signup_controller.dart';
import 'package:aellpr/view/authentication_screens/registration_screens/setup_password_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class PhoneNumberOtpScreen extends StatefulWidget {
  const PhoneNumberOtpScreen(
      {super.key, required this.phoneNumber, required this.verificationId});

  final String phoneNumber, verificationId;

  @override
  State<PhoneNumberOtpScreen> createState() => _PhoneNumberOtpScreenState();
}

class _PhoneNumberOtpScreenState extends State<PhoneNumberOtpScreen> {
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
                //  height: MediaQuery.of(context).size.height / 2.8,
                width: MediaQuery.of(context).size.width,
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 35),
                        child: Text(
                          "Verification code OTP",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 10),
                        child: Text(
                            "Enter the code sent to: ${widget.phoneNumber} ",
                            style: Theme.of(context).textTheme.bodySmall),
                      ),

                      const SizedBox(height: 25),

                      //-- OTP form
                      SizedBox(
                        //height: 57,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            //-- test

                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Pinput(
                                  length: 6,
                                  controller: controller.otpNumbers,
                                  onChanged: (value) {
                                    value = controller.otpNumbers.text.trim();
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //-- Resend OTP Button
                      const SizedBox(height: 25),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                "Didn't receive any code?",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        fontSize: 16),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Resend Code",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        color: Colors.red,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                              ),
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
                          onTap: () async {
                            try {
                              PhoneAuthCredential authCredential =
                                  // ignore: await_only_futures
                                  await PhoneAuthProvider.credential(
                                      verificationId: widget.verificationId,
                                      smsCode:
                                          controller.otpNumbers.text.trim());
                              Get.to(() => const SetUpPasswordScreen());
                              // ignore: empty_catches
                            } catch (e) {}
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
