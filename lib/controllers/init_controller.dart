import 'package:aellpr/controllers/introduction_controller/onboarding_controller.dart';
import 'package:aellpr/controllers/introduction_controller/splash_controller.dart';
import 'package:get/get.dart';

Future<void> initDependecies() async {
  Get.put(OnboardingController());
  Get.put(SplashController());
}
