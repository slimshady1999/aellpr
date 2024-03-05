import 'package:aellpr/configurations/custom_showDialog/select_bank_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

//-- Card topup screen1
class CardTopupScreen1 extends StatelessWidget {
  CardTopupScreen1({super.key});

  final amountController = TextEditingController();
  final GlobalKey<FormState> amountFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                const Text("Top-Up with Card/Account",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black))
              ]),
            ),

            //-- Amount form field
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 33),
              child: Text("Amount",
                  style: TextStyle(
                      fontSize: 14.6,
                      fontWeight: FontWeight.w700,
                      color: Colors.black)),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
              child: Form(
                key: amountFormKey,
                child: TextFormField(
                    controller: amountController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "00.000",
                        prefixIcon: Image.asset(
                          "assets/image/naira_logo.png",
                        ),
                        contentPadding:
                            const EdgeInsets.only(top: 31, left: 10),
                        filled: true,
                        fillColor: const Color(0xFFf5f5f5),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30)))),
              ),
            ),

            //-- use bank transfer method text
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Row(children: [
                const Text("For amount above ",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
                Image.asset(
                  "assets/image/naira_mini.png",
                ),
                const Text(" 9,999,00 ",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
                GestureDetector(
                  onTap: () {},
                  child: const Text("use bank transfer",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF8282FA))),
                )
              ]),
            ),

            //-- Continue Button

            amountController.text.isEmpty
                ? Container(
                    margin: const EdgeInsets.only(top: 20, left: 25, right: 25),
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Material(
                      color: const Color(0xFFFECFB0),
                      borderRadius: BorderRadius.circular(30),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
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
                  )
                : Container(
                    margin: const EdgeInsets.only(top: 20, left: 25, right: 25),
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Material(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(30),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () {
                          Get.to(() => const CardTopupScreen2());
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
          ],
        ),
      ),
    );
  }
}

//-- Card topup screen two
class CardTopupScreen2 extends StatelessWidget {
  const CardTopupScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        animationDuration: const Duration(seconds: 1),
        initialIndex: 0,
        child: Scaffold(
          body: SafeArea(
              child: SingleChildScrollView(
            child: Column(children: [
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
                  const Text("Top-Up with Card/Account",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black))
                ]),
              ),

              //-- Tabs

              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: TabBar(
                    tabAlignment: TabAlignment.fill,
                    physics: const BouncingScrollPhysics(),
                    dividerColor: Colors.transparent,
                    indicatorColor: Theme.of(context).colorScheme.primary,
                    tabs: const [
                      SizedBox(
                        height: 40,
                        width: 210,
                        child: Text("Debit Card",
                            style: TextStyle(
                                fontSize: 18.5,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ),
                      SizedBox(
                        height: 40,
                        width: 210,
                        child: Text("Bank Account",
                            style: TextStyle(
                                fontSize: 18.5,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      )
                    ]),
              ),

              //-- Tab 1 contents
              Container(
                  height: MediaQuery.of(context).size.height / 1.5,
                  width: double.infinity,
                  child: TabBarView(children: [
                    //-- Tab 1 contents
                    SizedBox(
                        height: MediaQuery.of(context).size.height / 1.5,
                        width: double.infinity,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //-- Card Number form
                              const Padding(
                                padding: EdgeInsets.only(left: 20, top: 40),
                                child: Text("Card Number",
                                    style: TextStyle(
                                        fontSize: 14.6,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 10),
                                child: TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                        prefixIcon:
                                            const Icon(Icons.credit_card),
                                        hintText: "Enter your card number",
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
                                padding:
                                    const EdgeInsets.only(left: 10, top: 12),
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
                                              const Text("Expiry Date",
                                                  style: TextStyle(
                                                      fontSize: 14.6,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black)),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
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
                                                          fillColor:
                                                              const Color(
                                                                  0xFFf3f0f0),
                                                          border: OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide
                                                                      .none,
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
                                            const Text("CVV",
                                                style: TextStyle(
                                                    fontSize: 14.6,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black)),
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
                                    ],
                                  ),
                                ),
                              ),

                              //-- Card Pin
                              const Padding(
                                padding: EdgeInsets.only(left: 25, top: 10),
                                child: Text("PIN",
                                    style: TextStyle(
                                        fontSize: 14.6,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, top: 6),
                                child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(4),
                                    ],
                                    decoration: InputDecoration(
                                        hintText: "Enter card pin",
                                        contentPadding: const EdgeInsets.only(
                                            top: 31, left: 10),
                                        filled: true,
                                        fillColor: const Color(0xFFf3f0f0),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius:
                                                BorderRadius.circular(30)))),
                              ),

                              //-- Save card details check box
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Checkbox(
                                        activeColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
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

                              //-- Continue Button
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 40, left: 25, right: 25),
                                height: 60,
                                width: MediaQuery.of(context).size.width,
                                child: Material(
                                  color: Theme.of(context).colorScheme.primary,
                                  borderRadius: BorderRadius.circular(30),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(30),
                                    onTap: () {
                                      // Get.to(() => const CardTopupScreen2());
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
                            ])),

                    //-- Tab contents 2
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 1.5,
                      width: double.infinity,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //-- Select Bank
                            const Padding(
                              padding: EdgeInsets.only(left: 20, top: 34),
                              child: Text("Bank",
                                  style: TextStyle(
                                      fontSize: 14.6,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 6, left: 20, right: 20),
                              child: Container(
                                height: 55,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFf3f0f0),
                                    borderRadius: BorderRadius.circular(20)),
                                child: ListTile(
                                    onTap: () {
                                      CustomShowDialog.displayDialog();
                                    },
                                    leading: const Icon(
                                      Icons.account_balance,
                                      color: Colors.grey,
                                    ),
                                    title: const Text(" Select Back",
                                        style: TextStyle(
                                          color: Colors.grey,
                                        )),
                                    trailing: const Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.grey,
                                    )),
                              ),
                            ),

                            //-- Account Number
                            const SizedBox(height: 40),
                            const Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text("Bank Account",
                                  style: TextStyle(
                                      fontSize: 14.6,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 30, right: 30, top: 10),
                              child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(10),
                                  ],
                                  decoration: InputDecoration(
                                      prefixIcon: const Icon(Icons.credit_card),
                                      hintText:
                                          "Enter 10 digits account number",
                                      hintStyle: const TextStyle(
                                          fontSize: 13.6,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                      contentPadding: const EdgeInsets.only(
                                          top: 31, left: 10),
                                      filled: true,
                                      fillColor: const Color(0xFFf3f0f0),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(30)))),
                            ),

                            //-- Continue Button
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 40, left: 25, right: 25),
                              height: 60,
                              width: MediaQuery.of(context).size.width,
                              child: Material(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: BorderRadius.circular(30),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(30),
                                  onTap: () {
                                    // Get.to(() => const CardTopupScreen2());
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
                          ]),
                    ),
                  ]))
            ]),
          )),
        ));
  }
}
