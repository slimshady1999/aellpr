import 'package:aellpr/view/intro_screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnboardingController extends GetxController {
  final pageController = PageController();
  var currentPageIndex = 0.obs;
  Rx<bool> lastPage = false.obs;
  final userDataStorage = GetStorage();

  //-- Initial the pageController
  @override
  void onInit() {
    super.onInit();
    pageController.initialPage;
  }

  //-- Smooth Indicator dot
  smoothIndicatorDot() {
    pageController.nextPage(
        duration: (const Duration(seconds: 1)), curve: Curves.ease);
  }

  //-- update current page and jump to last page
  moveToNextPage() {
    pageController.nextPage(
        duration: (const Duration(seconds: 1)), curve: Curves.ease);
  }

  //-- skip to last page
  skipOnboardingScreen() {
    Get.offAll(() => const WelcomeScreen());
    // userDataStorage.write("id", "onboardingView");
  }
}
