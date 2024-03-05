import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSnackBar {
  static hideSnackBar() =>
      ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();

  //-- Successful SnackBar
  static successfulSnackBar({required title, message = "", duration = 5}) {
    Get.snackbar(title, message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: Colors.white,
        snackStyle: SnackStyle.FLOATING,
        backgroundColor: Colors.green,
        snackPosition: SnackPosition.BOTTOM,
        duration: Duration(seconds: duration),
        margin: const EdgeInsets.all(20),
        icon: const Icon(Icons.check, color: Colors.white));
  }

  //-- Error Snackbar
  static errorSnackBar({required title, message = '', duration = 5}) {
    Get.snackbar(title, message,
        isDismissible: true,
        shouldIconPulse: true,
        snackPosition: SnackPosition.BOTTOM,
        duration: Duration(seconds: duration),
        margin: const EdgeInsets.all(20),
        snackStyle: SnackStyle.FLOATING,
        backgroundColor: Theme.of(Get.context!).colorScheme.primary,
        colorText: Colors.white,
        icon: const Icon(Icons.error, color: Colors.white));
  }

  //-- warning snackbar
  static WarningSnackBar({required title, message = "", duration = 5}) {
    Get.snackbar(title, message,
        isDismissible: true,
        shouldIconPulse: true,
        snackStyle: SnackStyle.FLOATING,
        backgroundColor: Colors.orange,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        duration: Duration(seconds: duration),
        margin: const EdgeInsets.all(20),
        icon: const Icon(Icons.warning, color: Colors.white));
  }
}
