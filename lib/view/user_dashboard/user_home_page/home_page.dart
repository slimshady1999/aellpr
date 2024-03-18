import 'package:aellpr/controllers/dispay_user_info_controller/users_controller.dart';
import 'package:aellpr/view/user_dashboard/history_%20screens/package_history.dart';
import 'package:aellpr/view/user_dashboard/profile_management/profile_screen.dart';
import 'package:aellpr/view/user_dashboard/user_home_page/add_%20money/add_money_screen.dart';
import 'package:aellpr/view/user_dashboard/user_home_page/send_package/package_first_screen.dart';
import 'package:aellpr/view/user_dashboard/history_%20screens/transaction_history.dart';
import 'package:aellpr/view/user_dashboard/user_home_page/withdraw_money/withdraw_money_screen.dart';
import 'package:aellpr/view/user_dashboard/widgets/user_notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserDashboardScreen extends GetView {
  const UserDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return Scaffold(body: SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          child: Obx(() {
            if (controller.profileLoading.value) {
              return const Padding(
                padding: EdgeInsets.only(top: 25),
                child: Center(child: CircularProgressIndicator()),
              );
            }
            return Column(
              children: [
                //-- Profile name and notification section
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: GestureDetector(
                              onTap: () {
                                Get.to(() => const UserProfileScreen());
                              },
                              child: const CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/image/dp.png"),
                                radius: 15,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7.0, right: 6),
                            child: Text("Hi,",
                                style: Theme.of(context).textTheme.bodyMedium),
                          ),
                          Text(controller.user.value.firstName.toString(),
                              style: Theme.of(context).textTheme.bodyMedium),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 20,
                          child: Stack(children: [
                            const Positioned(
                                top: 5,
                                left: 21,
                                child: Icon(Icons.circle,
                                    color: Colors.red, size: 10)),
                            IconButton(
                                onPressed: () {
                                  Get.to(() => const UserNotificationScreen());
                                },
                                icon: const Icon(Icons.notifications,
                                    color: Color.fromARGB(255, 187, 187, 187))),
                          ]),
                        ),
                      )
                    ],
                  ),
                ),

                //-- wallet balance section
                Container(
                  margin: const EdgeInsets.only(left: 25, right: 25, top: 30),
                  height: MediaQuery.of(context).size.height / 5.3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      //-- balnce and transaction history section
                      Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 11.0, right: 4),
                                  child: Text(
                                    "Your balance",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: Colors.white),
                                  ),
                                ),
                                GestureDetector(
                                    onTap: () {},
                                    child: const Icon(
                                        Icons.remove_red_eye_outlined,
                                        size: 17,
                                        color: Colors.white)),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 7.0),
                              child: TextButton(
                                  onPressed: () {
                                    Get.to(
                                        () => const TransactionHistoryScreen());
                                  },
                                  child: Text(
                                    "Transaction history",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: Colors.white),
                                  )),
                            )
                          ],
                        ),
                      ),

                      //-- Balance section
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 11.0,
                        ),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "60.451.00",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontSize: 26, color: Colors.white),
                          ),
                        ),
                      ),

                      //-- Add money and withdraw button
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 11),
                              height: 37,
                              width: 104,
                              child: Material(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(30),
                                  onTap: () {
                                    Get.to(() => const AddMoneyScreen());
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.add,
                                        size: 15,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
                                      const SizedBox(width: 1),
                                      Text(
                                        "Add Money",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                              fontSize: 10.7,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            // withdraw button
                            Container(
                              margin: const EdgeInsets.only(left: 8),
                              height: 37,
                              width: 104,
                              child: Material(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(30),
                                  onTap: () {
                                    Get.to(() => const WithdrawMoneyScreen());
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.arrow_downward,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          size: 15),
                                      const SizedBox(width: 1),
                                      Text(
                                        "Withdraw",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                              fontSize: 10.7,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                //-- access delivery guys now
                Container(
                  margin: const EdgeInsets.only(left: 25, right: 25, top: 10),
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: const Color(0xFFffdfc9),
                      borderRadius: BorderRadius.circular(7)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Image.asset("assets/image/delivery-man.png",
                            height: 55, width: 55),
                      ),

                      // withdraw button
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Send a Package",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontSize: 14,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                            ),
                            Text(
                              "Get a Aellpr to deliver your package",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontSize: 8,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                            ),
                          ]),
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: CircleAvatar(
                            radius: 20,
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                            child: IconButton(
                                onPressed: () {
                                  Get.to(() => const PackageFirstScreen());
                                },
                                icon: const Icon(Icons.arrow_forward,
                                    color: Colors.white))),
                      ),
                    ],
                  ),
                ),

                //-- ADs section
                Container(
                  margin: const EdgeInsets.only(left: 25, right: 25, top: 10),
                  height: MediaQuery.of(context).size.height / 5.3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: const Color(0xFF2d2d2d),
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          colorFilter: ColorFilter.mode(
                              Color.fromARGB(145, 0, 0, 0), BlendMode.darken),
                          image: AssetImage("assets/image/happy-black.png")),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          "Get 25% of your package",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontSize: 12, color: Colors.white),
                        ),
                      ]),
                ),

                //-- Products Delivery History section
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 7),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0),
                              child: Text("Recently Sent",
                                  style:
                                      Theme.of(context).textTheme.bodyLarge!),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 25.0),
                              child: TextButton(
                                onPressed: () {
                                  Get.to(() => const PackageHistory());
                                },
                                child: Text("View All",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary)),
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 25,
                            right: 25,
                          ),
                          // height: MediaQuery.of(context).size.height / 5.0,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: const Color(0xFFf5f5f5),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Column(
                                          children: [
                                            Text("Order Id",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall),
                                            Text(
                                              "9he653",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 8.0, top: 5),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Status",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall,
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 8, top: 2),
                                              height: 27,
                                              width: 65,
                                              child: Material(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                child: InkWell(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  onTap: () {
                                                    //
                                                  },
                                                  child: Center(
                                                    child: Text(
                                                      "Ongoing",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodySmall!
                                                          .copyWith(
                                                              fontSize: 10),
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

                                  // second section
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Ikeja",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall,
                                              ),
                                              Text(
                                                "2 Anifowose",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall!
                                                    .copyWith(fontSize: 10),
                                              ),
                                            ],
                                          ),
                                        ),

                                        //-- 1 package section
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 8, top: 2),
                                          height: 26,
                                          width: 65,
                                          child: Material(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            child: InkWell(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              onTap: () {
                                                //
                                              },
                                              child: Center(
                                                child: Text(
                                                  "1 Package",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodySmall!
                                                      .copyWith(fontSize: 10),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 8.0, top: 5),
                                          child: Column(
                                            children: [
                                              Text("Ikorodo",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodySmall),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    left: 8, top: 2),
                                                height: 27,
                                                width: 65,
                                                child: Material(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  child: InkWell(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    onTap: () {
                                                      //
                                                    },
                                                    child: Center(
                                                      child: Text(
                                                        "Garage",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodySmall!
                                                            .copyWith(
                                                                fontSize: 10),
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
                                  ),

                                  //-- Little circle Progress Rectangle
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: SizedBox(
                                        height: 30,
                                        child: Row(children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0),
                                            child: Icon(Icons.circle_outlined,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary,
                                                size: 15),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0),
                                            child: SizedBox(
                                              height: 3,
                                              width: 120,
                                              child: LinearProgressIndicator(
                                                color: Colors.red,
                                                value: 20,
                                                backgroundColor: Colors.grey,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0),
                                            child: Image.asset(
                                                "assets/image/package.png",
                                                height: 15,
                                                width: 15),
                                          )
                                        ])),
                                  )
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    ));
  }
}
