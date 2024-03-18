import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class PaymentHistoryScreen extends StatelessWidget {
  const PaymentHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Payment History",
            style: Theme.of(context).textTheme.titleLarge),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //-- history 1
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text("March",
                      style: Theme.of(context).textTheme.bodyMedium),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Text("Clear all",
                      style: Theme.of(context).textTheme.bodySmall),
                )
              ],
            ),

            //-- transactions
            GestureDetector(
              onTap: () {
                Get.to(() => const PaymentDetailsScreen());
              },
              child: Container(
                margin: const EdgeInsets.only(left: 15, right: 5, top: 20),
                height: 60,
                width: double.infinity,
                decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey))),
                child: Row(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.credit_card, color: Colors.purple),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Payment Delivery via card",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(fontSize: 13)),
                              Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Text("Card Transaction",
                                    style:
                                        Theme.of(context).textTheme.bodySmall),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset("assets/image/naira.svg"),
                            Text(" - 2500,40",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(fontSize: 11)),
                          ],
                        ),
                        const SizedBox(height: 3),
                        Text("Mon, 1st March, 2024",
                            style: Theme.of(context).textTheme.bodySmall)
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 5, top: 25),
              height: 60,
              width: double.infinity,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))),
              child: Row(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.wallet,
                          color: Theme.of(context).colorScheme.primary),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Payment Delivery via card",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(fontSize: 13)),
                            Padding(
                              padding: const EdgeInsets.only(top: 2.0),
                              child: Text("Wallet Transaction",
                                  style: Theme.of(context).textTheme.bodySmall),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset("assets/image/naira.svg"),
                          Text(" - 2500,40",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(fontSize: 11)),
                        ],
                      ),
                      const SizedBox(height: 3),
                      Text("Mon, 1st March, 2024",
                          style: Theme.of(context).textTheme.bodySmall)
                    ],
                  )
                ],
              ),
            ),

            //-- history 1
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text("February",
                      style: Theme.of(context).textTheme.bodyMedium),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Text("Clear all",
                      style: Theme.of(context).textTheme.bodySmall),
                )
              ],
            ),

            //-- transactions
            Container(
              margin: const EdgeInsets.only(left: 15, right: 5, top: 20),
              height: 60,
              width: double.infinity,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))),
              child: Row(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.credit_card, color: Colors.purple),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Payment Delivery via card",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(fontSize: 13)),
                            Padding(
                              padding: const EdgeInsets.only(top: 2.0),
                              child: Text("Card Transaction",
                                  style: Theme.of(context).textTheme.bodySmall),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset("assets/image/naira.svg"),
                          Text(" - 2500,40",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(fontSize: 11)),
                        ],
                      ),
                      const SizedBox(height: 3),
                      Text("Mon, 1st March, 2024",
                          style: Theme.of(context).textTheme.bodySmall)
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 5, top: 25),
              height: 60,
              width: double.infinity,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))),
              child: Row(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.wallet,
                          color: Theme.of(context).colorScheme.primary),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Payment Delivery via card",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(fontSize: 13)),
                            Padding(
                              padding: const EdgeInsets.only(top: 2.0),
                              child: Text("Wallet Transaction",
                                  style: Theme.of(context).textTheme.bodySmall),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset("assets/image/naira.svg"),
                          Text(" - 2500,40",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(fontSize: 11)),
                        ],
                      ),
                      const SizedBox(height: 3),
                      Text("Mon, 1st March, 2024",
                          style: Theme.of(context).textTheme.bodySmall)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//-- Payments Details
class PaymentDetailsScreen extends StatelessWidget {
  const PaymentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Payment Details",
              style: Theme.of(context).textTheme.titleLarge),
        ),
        body: Column(
          children: [
            //-- detail 1
            Container(
              margin: const EdgeInsets.only(left: 24, right: 24, top: 20),
              height: 60,
              width: double.infinity,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Text("Transaction Type",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontSize: 13)),
                  ),
                  Text("Card", style: Theme.of(context).textTheme.bodySmall)
                ],
              ),
            ),

            //-- detail 2
            Container(
              margin: const EdgeInsets.only(left: 24, right: 24, top: 20),
              height: 60,
              width: double.infinity,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Text("Date",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontSize: 13)),
                  ),
                  Text("Mon, 1st March, 2024",
                      style: Theme.of(context).textTheme.bodySmall)
                ],
              ),
            ),

            //-- detail 3
            Container(
              margin: const EdgeInsets.only(left: 24, right: 24, top: 20),
              height: 60,
              width: double.infinity,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Text("Amount",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontSize: 13)),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset("assets/image/naira.svg"),
                      Text(" 2500,40",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontSize: 11)),
                    ],
                  ),
                ],
              ),
            ),

            //-- detail 4
            Container(
              margin: const EdgeInsets.only(left: 24, right: 24, top: 20),
              height: 60,
              width: double.infinity,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Text("Status",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontSize: 13)),
                  ),
                  Text("Successful",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 11)),
                ],
              ),
            ),

            //-- detail 3
            Container(
              margin: const EdgeInsets.only(left: 24, right: 24, top: 20),
              height: 60,
              width: double.infinity,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Text("ID",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontSize: 13)),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 90,
                        child: Text(
                            overflow: TextOverflow.ellipsis,
                            "hhfygefkbiuki746382nsjxdfrhgh",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontSize: 11)),
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset("assets/image/copy.svg")),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
