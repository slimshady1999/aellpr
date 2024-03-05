import 'package:aellpr/configurations/firebase/firebaseAuth/firebaseAuth.dart';
import 'package:aellpr/controllers/auth_controllers/signup_controller.dart';
import 'package:aellpr/controllers/introduction_controller/onboarding_controller.dart';
import 'package:aellpr/controllers/introduction_controller/splash_controller.dart';
import 'package:get/get.dart';

Future<void> initDependecies() async {
  Get.put(OnboardingController());
  Get.put(SplashController());
}
