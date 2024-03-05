import 'package:aellpr/configurations/loading_screen/loading_screen.dart';
import 'package:aellpr/view/user_dashboard/widgets/enter_transaction_pin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class TransactionPinController extends GetxController {
  //-- Variables
  final pin1Controller = TextEditingController();
  final pin2Controller = TextEditingController();
  final pin3Controller = TextEditingController();
  final pin4Controller = TextEditingController();
  final createPinKey = GlobalKey<FormState>();
  final savePinScreen = GetStorage();

  //-- check pin validation
  Future<void> transactionPinProcess() async {
    try {
      //-- show loding
      LoadingScreen.openLoadingDialog();

      //-- check pin validation
      if (!createPinKey.currentState!.validate()) {
        LoadingScreen.stopLoading();
        return;
      }

      //-- save page to memory and move to another page
      LoadingScreen.stopLoading();
      enterTransactionPin();
      savePinScreen.write("pinScreen", "pinScreen");
    } catch (e) {
      LoadingScreen.stopLoading();

      throw " Ops Something went wrong";
    }
  }
}
