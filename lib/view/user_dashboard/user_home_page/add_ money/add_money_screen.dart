import 'package:aellpr/view/user_dashboard/user_home_page/add_%20money/card_topup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AddMoneyScreen extends StatelessWidget {
  const AddMoneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf3f0f0),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 25),
                child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                    )),
              ),
              Text(
                "Add Money",
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ]),
          ),

          //-- Add through bank transfer

          Container(
            margin: const EdgeInsets.only(left: 24, right: 24, top: 15),
            // height: MediaQuery.of(context).size.height / 3.1,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ListTile(
                        onTap: () {
                          Get.to(() => const CardTopupScreen2());
                        },
                        leading: SvgPicture.asset("assets/image/new_bank.svg"),
                        title: Text(
                          "Bank Transfer",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontSize: 13),
                        ),
                        subtitle: Text(
                          textAlign: TextAlign.start,
                          "Add money via mobile or internet banking",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(fontSize: 11),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios)),
                  ),

                  //-- gaping color
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text("- - - - - - - - - - - - - - - - - - - -  ",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 227, 227, 227),
                            fontWeight: FontWeight.w900)),
                  ),

                  //-- Bank Account Number
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sterling Bank",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(fontSize: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                "345 538 2145",
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),
                          ],
                        ),
                      ),

                      //-- Copy Number
                      Container(
                        margin: const EdgeInsets.only(top: 20, right: 18),
                        height: 50,
                        width: 140,
                        child: Material(
                          color: const Color(0xFFffdfc9),
                          borderRadius: BorderRadius.circular(30),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(30),
                            onTap: () {
                              // controller.login();
                            },
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(right: 2.0),
                                    child: Icon(Icons.copy, size: 15),
                                  ),
                                  Text(
                                    "Copy Number",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                            fontWeight: FontWeight.w500,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 13)
                ]),
              ),
            ),
          ),

          //-- Or Transfer via Card
          const SizedBox(height: 20),
          Text(
            " OR",
            style: Theme.of(context).textTheme.bodyMedium,
          ),

          Container(
            margin: const EdgeInsets.only(left: 24, right: 24, top: 15),
            //  height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListTile(
                  onTap: () {
                    Get.to(() => CardTopupScreen1());
                  },
                  leading: SvgPicture.asset("assets/image/new_card.svg"),
                  title: Text(
                    "Top-Up with Card/Account",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 13),
                  ),
                  subtitle: Text(
                    "Add money directly from your bank card or account",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontSize: 11),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios)),
            ),
          ),
        ],
      )),
    );
  }
}
