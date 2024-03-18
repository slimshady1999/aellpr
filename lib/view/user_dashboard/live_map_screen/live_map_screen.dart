import 'package:aellpr/configurations/custom_showDialog/cancel_request_warning.dart';
import 'package:aellpr/view/user_dashboard/user_home_page/send_package/call_page.dart';
import 'package:aellpr/view/user_dashboard/user_home_page/send_package/chat_page.dart';
import 'package:aellpr/view/user_dashboard/user_home_page/send_package/qrcode_generator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LiveMapScreen extends StatelessWidget {
  const LiveMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DraggableScrollableController draggableScrollableController =
        DraggableScrollableController();
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.contain,
                repeat: ImageRepeat.repeat,
                image: AssetImage(
                  "assets/image/map.png",
                ))),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: AppBar(
                backgroundColor: Colors.transparent,
                centerTitle: true,
                title: Text("Live Map",
                    style: Theme.of(context).textTheme.titleLarge),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: DraggableScrollableSheet(
                  controller: draggableScrollableController,
                  expand: false,
                  builder: (context,
                      ScrollController draggableScrollableController) {
                    return Container(
                      height: MediaQuery.of(context).size.height / 3.4,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //-- handle
                            const SizedBox(
                              height: 12,
                            ),
                            Container(
                                height: 6.5, width: 65, color: Colors.grey),
                            //-- User
                            const SizedBox(
                              height: 20,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 24),
                                  child: Text(
                                    "Nearby Aellpr found",
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 24),
                                  child: Text(
                                    "0.005s",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: Colors.green),
                                  ),
                                ),
                              ],
                            ),
                            //-- Users profile
                            Container(
                              height: 70,
                              margin: const EdgeInsets.only(
                                  left: 24, right: 24, top: 20),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 221, 220, 220)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 30),
                                        child: Image.asset(
                                            "assets/image/dp.png",
                                            height: 30,
                                            width: 30,
                                            fit: BoxFit.cover),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            //-- Name
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 5),
                                              child: Text("Smith",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium),
                                            ),

                                            //-- Phone Number

                                            const SizedBox(height: 2),
                                            Row(
                                              children: [
                                                Icon(Icons.star,
                                                    size: 14,
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .primary),
                                                Icon(Icons.star,
                                                    size: 14,
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .primary),
                                                Icon(Icons.star,
                                                    size: 14,
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .primary),
                                                const Icon(Icons.star,
                                                    size: 14,
                                                    color: Colors.grey),
                                                const Icon(Icons.star,
                                                    size: 14,
                                                    color: Colors.grey),
                                              ],
                                            ),
                                            Text(" [100 Reviews)]",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall!
                                                    .copyWith(fontSize: 10))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 20,
                                          child: IconButton(
                                              onPressed: () {
                                                Get.to(() => const ChatPage());
                                              },
                                              icon: Icon(Icons.chat,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .primary))),
                                      const SizedBox(width: 15),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 10,
                                        ),
                                        child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 20,
                                            child: IconButton(
                                                onPressed: () {
                                                  Get.to(
                                                      () => const CallPage());
                                                },
                                                icon: Icon(Icons.phone,
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .primary))),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),

                            // pickup
                            Container(
                                height: 122,
                                width: double.infinity,
                                margin: const EdgeInsets.only(
                                    left: 24, right: 24, top: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color.fromARGB(
                                        255, 221, 220, 220)),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 30,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.circle,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                              size: 15),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                top: 3, bottom: 3),
                                            height: 30,
                                            width: 3.4,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                                gradient: LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      const Color.fromARGB(
                                                          255, 198, 198, 198),
                                                      Theme.of(context)
                                                          .colorScheme
                                                          .primary,
                                                    ])),
                                          ),
                                          Icon(Icons.location_pin,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                              size: 20),
                                        ],
                                      ),
                                    ),

                                    //-- Pickup Point
                                    Padding(
                                      padding: const EdgeInsets.only(left: 6),
                                      child: SizedBox(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              child: Text(
                                                  "24, IKeja Anifowose, Lagos",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyLarge),
                                            ),

                                            //-- Drop Off Point
                                            const SizedBox(height: 20),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 6),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15),
                                                child: Text(
                                                    "30, Ikorodu Garage, Lagos",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyLarge),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )),

                            //-- Transportation
                            Container(
                              height: 70,
                              margin: const EdgeInsets.only(
                                  left: 25, right: 25, top: 10),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 221, 220, 220)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("Transportation Preference",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Text("Regular",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall),
                                  ),
                                ],
                              ),
                            ),

                            //-- Generate QR code
                            Padding(
                              padding: const EdgeInsets.only(left: 24, top: 15),
                              child: Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(right: 5.0),
                                    child: Icon(Icons.qr_code,
                                        color: Color(0xFF1A73E8)),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Get.to(() => const QRCodePage1());
                                      },
                                      child: Text(
                                          "Genearte QR code for confirmation",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                  color:
                                                      const Color(0xFF1A73E8))))
                                ],
                              ),
                            ),

                            //-- Cancel Button
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 14, left: 24, bottom: 10),
                              child: TextButton(
                                  onPressed: () {
                                    CancelRequestWarning.showWarning();
                                  },
                                  child: Text("Cancel Request",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary))),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
