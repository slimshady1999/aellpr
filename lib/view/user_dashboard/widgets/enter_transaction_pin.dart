import 'package:aellpr/controllers/transactions_controller/enter_transaction_pin_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

enterTransactionPin() {
  final controller = Get.put(EnterPinController());
  showModalBottomSheet(
      context: Get.overlayContext!,
      builder: (context) => Container(
            height: MediaQuery.of(context).size.height / 1.4,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: SingleChildScrollView(
              child: Form(
                key: controller.enterPinKey,
                child: Column(
                  children: [
                    //-- Trasaction pin text
                    const SizedBox(
                      height: 40,
                    ),
                    Text("Enter your Transaction Pin",
                        style: Theme.of(context).textTheme.bodyMedium),

                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text("Enter Pin to proceed with payment",
                          style: Theme.of(context).textTheme.bodySmall),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 35, right: 35),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //-- first pin field
                              Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                child: TextFormField(
                                  controller: controller.pin1Controller,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                  ],
                                  decoration: const InputDecoration(
                                      fillColor: Color(0xFFf3f0f0),
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none)),
                                ),
                              ),

                              //-- second pin field
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                height: 65,
                                width: 65,
                                child: TextFormField(
                                  controller: controller.pin2Controller,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                  ],
                                  decoration: const InputDecoration(
                                      fillColor: Color(0xFFf3f0f0),
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none)),
                                ),
                              ),

                              //-- third pin field
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                height: 65,
                                width: 65,
                                child: TextFormField(
                                  controller: controller.pin3Controller,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                  ],
                                  decoration: const InputDecoration(
                                      fillColor: Color(0xFFf3f0f0),
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none)),
                                ),
                              ),

                              //-- fourth pin field
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                height: 65,
                                width: 65,
                                child: TextFormField(
                                  controller: controller.pin4Controller,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                  ],
                                  decoration: const InputDecoration(
                                      fillColor: Color(0xFFf3f0f0),
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none)),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                    //-- Continue button
                    const SizedBox(height: 45),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 25, right: 25, bottom: 25),
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: Material(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(30),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(30),
                          onTap: () {
                            controller.enterPinValidation();
                          },
                          child: Center(
                            child: Text(
                              "Continue",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(fontSize: 13, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ));
}
