import 'package:aellpr/view/user_dashboard/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class PaymentCancelWarning {
  static showWarning() {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: true,
        builder: (context) => WillPopScope(
            onWillPop: () async {
              return true;
            },
            child: Scaffold(
              backgroundColor: const Color.fromARGB(0, 94, 94, 94),
              body: Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.transparent,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin:
                            const EdgeInsets.only(top: 20, left: 40, right: 40),
                        height: 250,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                            border: Border.all(color: Colors.white)),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Reminder",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black)),
                              const Text("Do you want to cancel this operation",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black)),

                              //-- Continue button
                              const SizedBox(height: 20),
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 25, right: 25),
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
                                        "Continue",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(fontSize: 13),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 25, right: 25, bottom: 25),
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    )),
                                width: MediaQuery.of(context).size.width,
                                child: Material(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(30),
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Center(
                                      child: Text(
                                        "Cancel",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ]),
              ),
            )));
  }

  //-- Stop Loading
  static exitDialog() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
