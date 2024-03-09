import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductQuantityController extends GetxController {
  //-- variables
  final prductAmountController = TextEditingController();
  final prductWeightController = TextEditingController();
  final pickupLocationController = TextEditingController();
  final deopoffLocationController = TextEditingController();
  final productValue = 1.obs;
  final addProductValue = 0.obs;
  final substractProductValue = 0.obs;
  var newProductValue = 1.obs;
  increaseValue() {
    addProductValue.value = productValue.value++;
    newProductValue.value = productValue.value;
  }

  totalProductValue() {
    newProductValue.value = productValue.value;
  }

  decreaseValue() {
    substractProductValue.value == productValue.value--;
    newProductValue.value = productValue.value;
  }
}
