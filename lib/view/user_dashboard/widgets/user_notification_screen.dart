import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserNotificationScreen extends StatelessWidget {
  const UserNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(UserController());
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //-- Back button and page title
            Container(
              margin: const EdgeInsets.only(top: 6),
              width: double.infinity,
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 30),
                  child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                      )),
                ),
                const Text("Notification",
                    style: TextStyle(fontSize: 20, color: Colors.black))
              ]),
            ),

            //-- Notification body

            const SizedBox(height: 30),

            //-- Default Notification
            Container(
              margin: const EdgeInsets.only(left: 15, right: 16),
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          width: 1.7,
                          color: Theme.of(context).colorScheme.primary))),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0, right: 16),
                  child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      child: const Icon(Icons.check, color: Colors.white)),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Welcome to Aellpr",
                        style: TextStyle(
                            fontSize: 18.5,
                            color: Colors.black,
                            fontWeight: FontWeight.w500)),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text("Welcome to Aellpr official Application.",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w300)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0, bottom: 13),
                      child: Text("1min ago",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
              ]),
            )
          ],
        )));
  }
}
