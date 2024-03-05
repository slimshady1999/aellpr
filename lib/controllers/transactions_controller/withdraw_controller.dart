import 'package:aellpr/configurations/loading_screen/loading_screen.dart';
import 'package:aellpr/view/user_dashboard/user_home_page/withdraw_money/create_withdraw_pin.dart';
import 'package:aellpr/view/user_dashboard/widgets/enter_transaction_pin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class WithdrawController extends GetxController {
  //-- Variables
  final amountKey = GlobalKey<FormState>();
  final withdrawAmountController = TextEditingController();
  final savePinScreen = GetStorage();

  //-- check pin validation
  Future<void> withdraw() async {
    try {
      //-- show loding
      LoadingScreen.openLoadingDialog();

      //-- check if users have created transaction pin before
      LoadingScreen.stopLoading();
      if (savePinScreen.read("pinScreen") != null) {
        enterTransactionPin();
      } else {
        Get.to(() => const WithdrawalPinScreen());
      }
    } catch (e) {
      LoadingScreen.stopLoading();

      throw " Ops Something went wrong";
    }
  }
}
