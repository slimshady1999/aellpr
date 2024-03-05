import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CustomShowDialog {
  static void displayDialog() {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: true,
        builder: (context) => WillPopScope(
            onWillPop: () async {
              return true;
            },
            child: Scaffold(
              body: Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.white,
                child: Column(children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    width: double.infinity,
                    child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 25),
                        child: IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                            )),
                      ),
                      const Text("Select Bank",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.black))
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
