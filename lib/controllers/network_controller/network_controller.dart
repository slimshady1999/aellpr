import 'dart:async';
import 'package:aellpr/configurations/error_screens/error_screen.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class NetworkManagement extends GetxController {
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _streamSubscription;
  final Rx<ConnectivityResult> _connectivityStatus =
      ConnectivityResult.none.obs;

  @override
  void onInit() {
    super.onInit();

    _streamSubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    _connectivityStatus.value = result;
    if (_connectivityStatus.value == ConnectivityResult.none) {
      return Get.to(() => ErrorScreen(
            animationImage: "assets/lottie/lottie1.png",
            title: "Ops! no internet connection",
            body: "Please connect to the internet and try again",
            buttonText: "Retry",
            onPressed: () {},
          ));
    } else {
      return;
    }
  }

  //--check the internet connection status
  //-- return true if has internet access
  isConnected() async {
    final result = await _connectivity.checkConnectivity();
    try {
      if (result == ConnectivityResult.none) {
        Get.to(() => ErrorScreen(
              animationImage: "assets/lottie/lottie1.png",
              title: "Ops! no internet connection",
              body: "Please connect to the internet and try again",
              buttonText: "Retry",
              onPressed: () {},
            ));
      } else {
        return;
      }
    } on PlatformException catch (_) {
      return;
    }
  }

  //-- close the connection Stream
  @override
  void onClose() {
    super.onClose();
    _streamSubscription.cancel();
  }
}
