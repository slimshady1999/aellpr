import 'package:aellpr/controllers/network_controller/network_controller.dart';
import 'package:aellpr/view/intro_screens/onboarding_screen.dart';
import 'package:aellpr/view/user_dashboard/widgets/bottom_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashController extends GetxController {
  //-- variables
  final userDataStorage = GetStorage();

  //-- call firebase Auth
  final newAuth = FirebaseAuth.instance;

  final networkController = Get.put(NetworkManagement());

  @override
  void onReady() {
    super.onReady();
    checkStatus();
  }

  checkStatus() async {
    //-- check internet connection
    await networkController.isConnected();

    //-- logged in users

    if (userDataStorage.read("id") != null ||
        newAuth.currentUser?.uid != null) {
      Future.delayed(const Duration(seconds: 4), () {
        Get.offAll(() => const CustomBottomBar());
      });
    } else {
      Future.delayed(const Duration(seconds: 7), () {
        Get.offAll(() => const OnboardingScreen());
      });
    }
  }
}
