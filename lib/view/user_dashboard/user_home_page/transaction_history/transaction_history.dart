import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransactionHistoryScreen extends StatelessWidget {
  const TransactionHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                  const Text("Transaction History",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black))
                ]),
              ),

              //-- Histories
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 40),
                child: Text("25 March",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
              ),

              const SizedBox(height: 10),

              SizedBox(
                height: 40,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 23, right: 6),
                          child: CircleAvatar(
                              backgroundColor: const Color(0xFFffdfc9),
                              radius: 15,
                              child: Icon(Icons.credit_card,
                                  color:
                                      Theme.of(context).colorScheme.primary)),
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("46574647483",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                            Text("Card Transaction",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black)),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                const Text("+",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),
                                Image.asset("assets/image/naira_mini.png"),
                                const Text("0.45",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black)),
                              ],
                            ),
                          ),
                          const Text("successful",
                              style: TextStyle(
                                  fontSize: 11.9,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //-- second Histories
              const SizedBox(height: 70),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("26 March",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
              ),

              const SizedBox(height: 10),

              SizedBox(
                height: 40,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 23, right: 6),
                          child: CircleAvatar(
                              backgroundColor: const Color(0xFFffdfc9),
                              radius: 15,
                              child: Icon(Icons.arrow_downward,
                                  color:
                                      Theme.of(context).colorScheme.primary)),
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("46574647483",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                            Text("Withdrawal",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black)),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                const Text("+",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),
                                Image.asset("assets/image/naira_mini.png"),
                                const Text("0.45",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black)),
                              ],
                            ),
                          ),
                          const Text("successful",
                              style: TextStyle(
                                  fontSize: 11.9,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 23, right: 6),
                            child: CircleAvatar(
                                backgroundColor: const Color(0xFFffdfc9),
                                radius: 15,
                                child: Icon(Icons.arrow_downward,
                                    color:
                                        Theme.of(context).colorScheme.primary)),
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("46574647483",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)),
                              Text("Withdrawal",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black)),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: Row(
                                children: [
                                  const Text("+",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black)),
                                  Image.asset("assets/image/naira_mini.png"),
                                  const Text("0.45",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black)),
                                ],
                              ),
                            ),
                            const Text("successful",
                                style: TextStyle(
                                    fontSize: 11.9,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 23, right: 6),
                            child: CircleAvatar(
                                backgroundColor: const Color(0xFFffdfc9),
                                radius: 15,
                                child: Icon(Icons.arrow_downward,
                                    color:
                                        Theme.of(context).colorScheme.primary)),
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("46574647483",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)),
                              Text("Withdrawal",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black)),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: Row(
                                children: [
                                  const Text("+",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black)),
                                  Image.asset("assets/image/naira_mini.png"),
                                  const Text("0.45",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black)),
                                ],
                              ),
                            ),
                            const Text("successful",
                                style: TextStyle(
                                    fontSize: 11.9,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 23, right: 6),
                            child: CircleAvatar(
                                backgroundColor: const Color(0xFFffdfc9),
                                radius: 15,
                                child: Icon(Icons.arrow_downward,
                                    color:
                                        Theme.of(context).colorScheme.primary)),
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("46574647483",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)),
                              Text("Withdrawal",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black)),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: Row(
                                children: [
                                  const Text("+",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black)),
                                  Image.asset("assets/image/naira_mini.png"),
                                  const Text("0.45",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black)),
                                ],
                              ),
                            ),
                            const Text("successful",
                                style: TextStyle(
                                    fontSize: 11.9,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 23, right: 6),
                            child: CircleAvatar(
                                backgroundColor: const Color(0xFFffdfc9),
                                radius: 15,
                                child: Icon(Icons.arrow_downward,
                                    color:
                                        Theme.of(context).colorScheme.primary)),
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("46574647483",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)),
                              Text("Withdrawal",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black)),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: Row(
                                children: [
                                  const Text("+",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black)),
                                  Image.asset("assets/image/naira_mini.png"),
                                  const Text("0.45",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black)),
                                ],
                              ),
                            ),
                            const Text("successful",
                                style: TextStyle(
                                    fontSize: 11.9,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
