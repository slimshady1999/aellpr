import 'package:aellpr/view/user_dashboard/user_home_page/add_%20money/card_topup_screen.dart';
import 'package:flutter/material.dart';
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
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: double.infinity,
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 25),
                child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                    )),
              ),
              const Text("Add Money",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black))
            ]),
          ),

          //-- Add through bank transfer

          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
            height: MediaQuery.of(context).size.height / 3.5,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ListTile(
                    onTap: () {
                      Get.to(() => const CardTopupScreen2());
                    },
                    leading: Icon(Icons.account_balance,
                        color: Theme.of(context).colorScheme.primary),
                    title: const Text("Bank Transfer",
                        style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.w500)),
                    subtitle: const Text(
                        "Add money via mobile or internet banking",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w300)),
                    trailing: const Icon(Icons.arrow_forward_ios)),
              ),

              //-- gaping color
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                    "- - - - - - - - - - - - - - - - - - - - - - - - - ",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 227, 227, 227),
                        fontWeight: FontWeight.w900)),
              ),

              //-- Bank Account Number
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sterling Bank",
                            style: TextStyle(
                                fontSize: 17.5,
                                color: Colors.black,
                                fontWeight: FontWeight.w400)),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text("345 538 2145",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ],
                    ),
                  ),

                  //-- Copy Number
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 25),
                    height: 55,
                    width: 132,
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
                                    .bodyMedium!
                                    .copyWith(
                                        fontSize: 15,
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
              )
            ]),
          ),

          //-- Or Transfer via Card
          const SizedBox(height: 20),
          const Text(" OR",
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.black)),

          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
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
                  leading: Icon(Icons.credit_card,
                      color: Theme.of(context).colorScheme.primary),
                  title: const Text("Top-Up with Card/Account",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w500)),
                  subtitle: const Text(
                      "Add money directly from your bank card or account",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w300)),
                  trailing: const Icon(Icons.arrow_forward_ios)),
            ),
          ),
        ],
      )),
    );
  }
}

//-- Top-Up with Card/Account screen

//-- Top-Up with Card/Account Screen 2
