import 'package:aellpr/view/user_dashboard/user_home_page/home_page.dart';
import 'package:aellpr/view/user_dashboard/user_home_page/send_package/enter_card_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectCardScreen extends StatelessWidget {
  const SelectCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(ProductQuantityController());
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 0),
                      child: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: CircleAvatar(
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                            child: const Icon(Icons.arrow_back,
                                color: Colors.white, size: 20),
                          )),
                    ),

                    //-- Choose Payment method type
                    const SizedBox(height: 25),
                    const Padding(
                      padding: EdgeInsets.only(left: 32, bottom: 20),
                      child: Text("Card Details",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black)),
                    ),

                    //-- Pay with wallet
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          margin: const EdgeInsets.only(left: 30, right: 30),
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xFFf3f0f0),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20),
                                      child: Icon(
                                        Icons.credit_card,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
                                    ),
                                    const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Sterling Bank",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400)),
                                        Text("*** *** 5765",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400)),
                                      ],
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 11),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.circle,
                                        size: 16,
                                        color: Colors.white,
                                      ),
                                      SizedBox(height: 3),
                                      Text("View Details",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w300)),
                                    ],
                                  ),
                                )
                              ])),
                    ),
                    const SizedBox(height: 10),

                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        enterCardDetails();
                      },
                      child: Container(
                          margin: const EdgeInsets.only(left: 30, right: 30),
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xFFf3f0f0),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Row(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Icon(
                                Icons.add,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            const Text(" Add new card",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400))
                          ])),
                    ),
                  ],
                ),
              ),

              //-- Continue Button
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.only(
                      top: 20, left: 25, right: 25, bottom: 25),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: Material(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(30),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(30),
                      onTap: () {
                        //  controller.addBeneficiaryProcess();
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
        ));
  }
}
