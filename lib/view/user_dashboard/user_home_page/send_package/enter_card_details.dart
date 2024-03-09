import 'package:aellpr/controllers/transactions_controller/enter_transaction_pin_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

enterCardDetails() {
  final controller = Get.put(EnterPinController());
  showModalBottomSheet(
      enableDrag: true,
      showDragHandle: true,
      backgroundColor: Colors.white,
      context: Get.overlayContext!,
      builder: (context) => Container(
          height: MediaQuery.of(context).size.height / 1.4,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: SingleChildScrollView(
            child: Form(
                key: controller.enterPinKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //-- Trasaction pin text
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Text("Enter Your Card details",
                            style: TextStyle(
                                fontSize: 16.5,
                                fontWeight: FontWeight.w400,
                                color: Colors.black)),
                      ),

                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //-- Card Holder Name
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 30, right: 30, top: 10),
                              child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      prefixIcon: const Icon(Icons.credit_card),
                                      hintText: "Enter card holder name",
                                      contentPadding: const EdgeInsets.only(
                                          top: 31, left: 10),
                                      filled: true,
                                      fillColor: const Color(0xFFf3f0f0),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(30)))),
                            ),

                            //-- Card Holder Number
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 30, right: 30, top: 20),
                              child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      prefixIcon: const Icon(Icons.credit_card),
                                      hintText: "Enter card number",
                                      contentPadding: const EdgeInsets.only(
                                          top: 31, left: 10),
                                      filled: true,
                                      fillColor: const Color(0xFFf3f0f0),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(30)))),
                            ),

                            //-- Expiration Card date and cvv
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 12),
                              child: SizedBox(
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    //-- Month / Year Expiry Date
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 5),
                                              child: SizedBox(
                                                height: 60,
                                                width: 150,
                                                child: TextFormField(
                                                    keyboardType:
                                                        TextInputType.number,
                                                    inputFormatters: [
                                                      LengthLimitingTextInputFormatter(
                                                          4),
                                                    ],
                                                    decoration: InputDecoration(
                                                        hintText: "MM/YY",
                                                        contentPadding:
                                                            const EdgeInsets
                                                                .only(
                                                                top: 31,
                                                                left: 14),
                                                        filled: true,
                                                        fillColor: const Color(
                                                            0xFFf3f0f0),
                                                        border: OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide.none,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30)))),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    //-- CVV
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 5,
                                            ),
                                            child: SizedBox(
                                              height: 60,
                                              width: 150,
                                              child: TextFormField(
                                                  keyboardType:
                                                      TextInputType.number,
                                                  inputFormatters: [
                                                    LengthLimitingTextInputFormatter(
                                                        3),
                                                  ],
                                                  decoration: InputDecoration(
                                                      hintText: "CVV",
                                                      contentPadding:
                                                          const EdgeInsets.only(
                                                              top: 31,
                                                              left: 14),
                                                      filled: true,
                                                      fillColor: const Color(
                                                          0xFFf3f0f0),
                                                      border: OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide.none,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30)))),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            //-- Save card details check box
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Checkbox(
                                      activeColor:
                                          Theme.of(context).colorScheme.primary,
                                      checkColor: Colors.white,
                                      value: true,
                                      onChanged: (value) {}),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 3.0),
                                  child: Text(
                                    "Save Card Details",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          ]),

                      //-- Continue button
                      const SizedBox(height: 10),
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
                                "save",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(fontSize: 13),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ])),
          )));
}
