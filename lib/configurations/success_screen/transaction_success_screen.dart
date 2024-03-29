import 'package:aellpr/view/user_dashboard/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

transactionSuccessScreen(
  String amount,
) {
  return showModalBottomSheet(
      context: Get.overlayContext!,
      builder: (context) => Container(
            height: MediaQuery.of(context).size.height / 2.0,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //-- Check lottie animation

                  Lottie.asset('assets/lottie/check.json',
                      fit: BoxFit.cover, height: 200, width: 200),
                  //-- Trasaction pin text

                  Text("Withdraw Successful",
                      style: Theme.of(context).textTheme.bodyMedium),

                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //-- Naira image
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Image.asset("assets/image/naira_mini.png"),
                        ),
                        Text(amount,
                            style: Theme.of(context).textTheme.bodyMedium),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text("was sent to your account",
                              style: Theme.of(context).textTheme.bodyLarge),
                        ),
                      ],
                    ),
                  ),

                  //-- Continue button
                  const SizedBox(height: 45),
                  Container(
                    margin:
                        const EdgeInsets.only(left: 25, right: 25, bottom: 25),
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Material(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(30),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () {
                          Get.offAll(() => const CustomBottomBar());
                        },
                        child: Center(
                          child: Text(
                            "Done",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontSize: 13, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ));
}
