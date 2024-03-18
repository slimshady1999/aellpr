import 'package:aellpr/configurations/custom_showDialog/select_bank_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
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
            SizedBox(
              width: double.infinity,
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 13, right: 20),
                  child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                      )),
                ),
                Text(
                  "Top-Up with Card/Account",
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ]),
            ),

            //-- Amount form field
            Padding(
              padding: const EdgeInsets.only(left: 22, top: 33),
              child:
                  Text("Amount", style: Theme.of(context).textTheme.bodyMedium),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22, top: 10),
              child: Form(
                key: amountFormKey,
                child: TextFormField(
                    controller: amountController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "00.000",
                        prefixIcon: CircleAvatar(
                          backgroundColor: const Color(0xFFf5f5f5),
                          radius: 15,
                          child: SvgPicture.asset(
                            height: 15,
                            width: 15,
                            "assets/image/naira.svg",
                          ),
                        ),
                        contentPadding:
                            const EdgeInsets.only(top: 31, left: 10),
                        filled: true,
                        fillColor: const Color(0xFFf5f5f5),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20)))),
              ),
            ),

            //-- use bank transfer method text
            Padding(
              padding: const EdgeInsets.only(left: 22, top: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text("For amount above ",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontSize: 11)),
                Image.asset(
                  "assets/image/naira_mini.png",
                ),
                Text(" 9,999,00 ",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontSize: 11)),
                GestureDetector(
                  onTap: () {},
                  child: Text("use bank transfer",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 11, color: const Color(0xFF8282FA))),
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
                                .copyWith(fontSize: 13, color: Colors.white),
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
                                .copyWith(fontSize: 13, color: Colors.white),
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
              SizedBox(
                width: double.infinity,
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.5, right: 20),
                    child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                        )),
                  ),
                  Text("Top-Up with Card/Account",
                      style: Theme.of(context).textTheme.bodyMedium)
                ]),
              ),

              //-- Tabs

              Padding(
                padding: const EdgeInsets.only(top: 30, left: 22, right: 22),
                child: TabBar(
                    tabAlignment: TabAlignment.fill,
                    physics: const BouncingScrollPhysics(),
                    dividerColor: Colors.transparent,
                    indicatorColor: Theme.of(context).colorScheme.primary,
                    tabs: [
                      SizedBox(
                        height: 40,
                        width: 210,
                        child: Text("Debit Card",
                            style: Theme.of(context).textTheme.bodyLarge),
                      ),
                      SizedBox(
                        height: 40,
                        width: 210,
                        child: Text("Bank Account",
                            style: Theme.of(context).textTheme.bodyLarge),
                      )
                    ]),
              ),

              //-- Tab 1 contents
              SizedBox(
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
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 22, top: 40),
                                child: Text("Card Number",
                                    style:
                                        Theme.of(context).textTheme.bodySmall),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 22, right: 22, top: 5),
                                child: TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                        prefixIcon:
                                            const Icon(Icons.credit_card),
                                        hintText: "Enter your card number",
                                        hintStyle: Theme.of(context)
                                            .textTheme
                                            .bodySmall,
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
                                padding: const EdgeInsets.only(
                                    left: 22, right: 22, top: 16),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      //-- Month / Year Expiry Date
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Expiry Date",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall),
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
                                                      hintStyle:
                                                          Theme.of(context)
                                                              .textTheme
                                                              .bodySmall,
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

                                      //-- CVV
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("CVV",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall),
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
                                                      hintStyle:
                                                          Theme.of(context)
                                                              .textTheme
                                                              .bodySmall,
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
                                    ],
                                  ),
                                ),
                              ),

                              //-- Card Pin
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 22, top: 8),
                                child: Text("PIN",
                                    style:
                                        Theme.of(context).textTheme.bodySmall),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 22, right: 22, top: 6),
                                child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(4),
                                    ],
                                    decoration: InputDecoration(
                                        hintText: "Enter card pin",
                                        hintStyle: Theme.of(context)
                                            .textTheme
                                            .bodySmall,
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
                                    padding: const EdgeInsets.only(left: 22),
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
                                            .copyWith(
                                                fontSize: 13,
                                                color: Colors.white),
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
                            Padding(
                              padding: const EdgeInsets.only(left: 22, top: 34),
                              child: Text("Bank",
                                  style: Theme.of(context).textTheme.bodySmall),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 6, left: 22, right: 22),
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
                                    title: Text(" Select Back",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall),
                                    trailing: const Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.grey,
                                    )),
                              ),
                            ),

                            //-- Account Number
                            const SizedBox(height: 40),
                            Padding(
                              padding: const EdgeInsets.only(left: 22),
                              child: Text("Bank Account",
                                  style: Theme.of(context).textTheme.bodySmall),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 22, right: 22, top: 10),
                              child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(10),
                                  ],
                                  decoration: InputDecoration(
                                      prefixIcon: const Icon(Icons.credit_card),
                                      hintText:
                                          "Enter 10 digits account number",
                                      hintStyle:
                                          Theme.of(context).textTheme.bodySmall,
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
                                  top: 40, left: 22, right: 22),
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
                                          .copyWith(
                                              fontSize: 13,
                                              color: Colors.white),
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
