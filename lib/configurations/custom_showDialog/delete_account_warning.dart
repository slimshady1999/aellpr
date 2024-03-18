import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeleteAccountWarning {
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
                        height: 240,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                            border: Border.all(color: Colors.white)),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 7,
                              ),
                              Text("Reminder",
                                  style: Theme.of(context).textTheme.bodyLarge),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                  textAlign: TextAlign.center,
                                  "Are you sure you want to delete your account",
                                  style: Theme.of(context).textTheme.bodySmall),

                              //-- Continue button
                              const SizedBox(height: 20),
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 25, right: 25),
                                height: 40,
                                width: 150,
                                child: Material(
                                  color: Theme.of(context).colorScheme.primary,
                                  borderRadius: BorderRadius.circular(30),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(30),
                                    onTap: () {
                                      // Get.offAll(() => const CustomBottomBar());
                                    },
                                    child: Center(
                                      child: Text(
                                        "Continue",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 25, right: 25, bottom: 5),
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    )),
                                width: 150,
                                child: Material(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(30),
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Center(
                                      child: Text("Back",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall),
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
