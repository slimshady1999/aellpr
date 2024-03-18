import 'package:flutter/material.dart';

class CardHistoryScreen extends StatelessWidget {
  const CardHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("Card History",
              style: Theme.of(context).textTheme.titleLarge)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //-- card details
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Card Details",
                      style: Theme.of(context).textTheme.bodyMedium),
                  Text("Clear All",
                      style: Theme.of(context).textTheme.bodySmall)
                ],
              ),
            ),

            //-- Cards 1
            Container(
              margin: const EdgeInsets.only(left: 24, right: 24, top: 20),
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFf3f0f0)),
              child: ListTile(
                  leading: Icon(Icons.credit_card_sharp,
                      color: Theme.of(context).colorScheme.primary),
                  title: Text("Sky Bank",
                      style: Theme.of(context).textTheme.bodyMedium),
                  subtitle: Text("**** **** *** 635",
                      style: Theme.of(context).textTheme.bodySmall),
                  trailing: TextButton(
                      onPressed: () {},
                      child: Text("View All",
                          style: Theme.of(context).textTheme.bodySmall))),
            ),

            //-- Cards 2
            Container(
              margin: const EdgeInsets.only(left: 24, right: 24, top: 20),
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFf3f0f0)),
              child: ListTile(
                  leading:
                      const Icon(Icons.credit_card_sharp, color: Colors.purple),
                  title: Text("Wema Bank",
                      style: Theme.of(context).textTheme.bodyMedium),
                  subtitle: Text("**** **** *** 635",
                      style: Theme.of(context).textTheme.bodySmall),
                  trailing: TextButton(
                      onPressed: () {},
                      child: Text("View All",
                          style: Theme.of(context).textTheme.bodySmall))),
            ),

            //-- Cards 3
            Container(
              margin: const EdgeInsets.only(left: 24, right: 24, top: 20),
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFf3f0f0)),
              child: ListTile(
                  leading:
                      const Icon(Icons.credit_card_sharp, color: Colors.green),
                  title: Text("Sky Bank",
                      style: Theme.of(context).textTheme.bodyMedium),
                  subtitle: Text("**** **** *** 635",
                      style: Theme.of(context).textTheme.bodySmall),
                  trailing: TextButton(
                      onPressed: () {},
                      child: Text("View All",
                          style: Theme.of(context).textTheme.bodySmall))),
            ),
          ],
        ),
      ),
    );
  }
}
