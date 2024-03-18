import 'package:aellpr/configurations/custom_showDialog/payment_cancel_warning.dart';
import 'package:aellpr/view/user_dashboard/live_map_screen/live_map_screen.dart';
import 'package:aellpr/view/user_dashboard/user_home_page/send_package/chat_page.dart';
import 'package:aellpr/view/user_dashboard/user_home_page/send_package/pay_with_wallet.dart';
import 'package:aellpr/view/user_dashboard/user_home_page/send_package/select_card_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PackageThirdScreen extends StatelessWidget {
  const PackageThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(ProductQuantityController());
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(Icons.arrow_back, color: Colors.white, size: 20),
              )),
          centerTitle: true,
          title: SizedBox(
              // width: 100,
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  radius: 8,
                  child: const Text("1",
                      style: TextStyle(
                          fontSize: 6,
                          fontWeight: FontWeight.w600,
                          color: Colors.white))),
              Container(
                  height: 2,
                  width: 35,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(5))),
              CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  radius: 8,
                  child: const Text("2",
                      style: TextStyle(
                          fontSize: 6,
                          fontWeight: FontWeight.w600,
                          color: Colors.white))),
              Container(
                  height: 2,
                  width: 35,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(5))),
              CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  radius: 8,
                  child: const Text("3",
                      style: TextStyle(
                          fontSize: 6,
                          fontWeight: FontWeight.w600,
                          color: Colors.white))),
            ],
          )),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                  onPressed: () {
                    PaymentCancelWarning.showWarning();
                  },
                  icon: Icon(
                    color: Theme.of(context).colorScheme.primary,
                    Icons.cancel,
                  )),
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //-- Choose Payment method type
                    const SizedBox(height: 35),
                    Padding(
                      padding: const EdgeInsets.only(left: 24, bottom: 20),
                      child: Text("Please choose your payment method",
                          style: Theme.of(context).textTheme.bodyLarge),
                    ),

                    //-- Pay with wallet
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        walletPayment();
                      },
                      child: Container(
                          margin: const EdgeInsets.only(left: 24, right: 24),
                          height: 55,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xFFf3f0f0),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Row(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 24, right: 24),
                              child: Icon(
                                Icons.wallet,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            Text(" Pay with wallet",
                                style: Theme.of(context).textTheme.bodySmall)
                          ])),
                    ),

                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const SelectCardScreen());
                      },
                      child: Container(
                          margin: const EdgeInsets.only(left: 24, right: 24),
                          height: 55,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xFFf3f0f0),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Row(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 24, right: 24),
                              child: Icon(
                                Icons.credit_card,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            Text(" Pay with Card",
                                style: Theme.of(context).textTheme.bodySmall)
                          ])),
                    ),
                  ],
                ),
              ),

              //-- Continue Button
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //-- read terms and condition check
                    Padding(
                      padding: const EdgeInsets.only(left: 24, top: 24),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Checkbox(
                                value: true,
                                activeColor: Colors.grey,
                                checkColor: Colors.white,
                                onChanged: (value) {}),
                            Text("Yes, I Accept the",
                                style: Theme.of(context).textTheme.bodySmall),
                            GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(left: 2.6),
                                child: Text("Terms and Condition",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary)),
                              ),
                            )
                          ]),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          top: 20, left: 24, right: 24, bottom: 25),
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: Material(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(30),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(30),
                          onTap: () {
                            Get.to(() => const LiveMapScreen());
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
            ],
          ),
        ));
  }
}
