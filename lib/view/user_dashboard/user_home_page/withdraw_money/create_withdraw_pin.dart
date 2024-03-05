import 'package:aellpr/configurations/validations/form_validation.dart';
import 'package:aellpr/controllers/transactions_controller/create_pin_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class WithdrawalPinScreen extends StatelessWidget {
  const WithdrawalPinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TransactionPinController());
    return Scaffold(
      body: SafeArea(
          child: Form(
        key: controller.createPinKey,
        child: Stack(
          children: [
            //-- Back button section
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    width: double.infinity,
                    child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 20),
                        child: IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                            )),
                      ),
                      const Text("Create Transaction Pin",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black))
                    ]),
                  ),

                  //--- Create transaction PIN input
                  //-- Create pin text input
                  const SizedBox(
                    height: 40,
                  ),
                  const Text("Create transaction 4-digits Pin-code",
                      style: TextStyle(
                          fontSize: 15.7,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),

                  //-- Pin input
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
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
                              validator: (value) =>
                                  FormValidation.pinVerification(value),
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
                              validator: (value) =>
                                  FormValidation.pinVerification(value),
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
                              validator: (value) =>
                                  FormValidation.pinVerification(value),
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
                              validator: (value) =>
                                  FormValidation.pinVerification(value),
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
                ],
              ),
            ),

            //-- Continue Button
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: Material(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(30),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {
                      controller.transactionPinProcess();
                    },
                    child: Center(
                      child: Text(
                        "Continue",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontSize: 13),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
