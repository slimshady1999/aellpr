import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadingScreen {
  static void openLoadingDialog() {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (context) => WillPopScope(
            onWillPop: () async {
              return false;
            },
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.transparent,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ]),
            )));
  }

  //-- Stop Loading
  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
