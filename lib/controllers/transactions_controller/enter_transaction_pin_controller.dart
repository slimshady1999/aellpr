import 'package:aellpr/configurations/loading_screen/loading_screen.dart';
import 'package:aellpr/configurations/success_screen/transaction_success_screen.dart';
import 'package:aellpr/controllers/transactions_controller/withdraw_controller.dart';
import 'package:aellpr/view/user_dashboard/widgets/enter_transaction_pin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class EnterPinController extends GetxController {
  final controller = Get.put(WithdrawController());
  //-- Variables
  final pin1Controller = TextEditingController();
  final pin2Controller = TextEditingController();
  final pin3Controller = TextEditingController();
  final pin4Controller = TextEditingController();
  final enterPinKey = GlobalKey<FormState>();

  //-- check pin validation
  Future<void> enterPinValidation() async {
    try {
      //-- show loding
      LoadingScreen.openLoadingDialog();

      //-- check pin validation
      if (!enterPinKey.currentState!.validate()) {
        LoadingScreen.stopLoading();
        return;
      }

      //-- save page to memory and move to another page
      LoadingScreen.stopLoading();
      transactionSuccessScreen(controller.withdrawAmountController.text.trim());
    } catch (e) {
      LoadingScreen.stopLoading();

      throw " Ops Something went wrong";
    }
  }
}
