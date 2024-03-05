import 'package:aellpr/configurations/loading_screen/loading_screen.dart';
import 'package:aellpr/view/user_dashboard/user_home_page/withdraw_money/create_withdraw_pin.dart';
import 'package:aellpr/view/user_dashboard/widgets/enter_transaction_pin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AddBeneficiaryController extends GetxController {
  //-- Variables
  final accountNumber = TextEditingController();
  final accountName = TextEditingController();
  final beneficiaryKey = GlobalKey<FormState>();
  final checkTPin = GetStorage();

  //-- check pin validation
  Future<void> addBeneficiaryProcess() async {
    try {
      //-- show loding
      LoadingScreen.openLoadingDialog();

      //-- check pin validation
      if (!beneficiaryKey.currentState!.validate()) {
        LoadingScreen.stopLoading();
        return;
      }

      //-- save page to memory and move to another page
      LoadingScreen.stopLoading();
      if (checkTPin.read("pinScreen") != null) {
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
