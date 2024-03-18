import 'package:aellpr/configurations/custom_showDialog/logout_warning.dart';
import 'package:aellpr/controllers/dispay_user_info_controller/users_controller.dart';
import 'package:aellpr/view/user_dashboard/history_%20screens/card_history_screen.dart';
import 'package:aellpr/view/user_dashboard/history_%20screens/payment_history.dart';
import 'package:aellpr/view/user_dashboard/profile_management/app_settings_screen.dart';
import 'package:aellpr/view/user_dashboard/profile_management/invite_and_earn.dart';
import 'package:aellpr/view/user_dashboard/profile_management/user_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            "Profile",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: TextButton(
                onPressed: () {
                  Get.to(() => const UserEditProfileScreen());
                },
                child: Text(
                  "Edit Profile",
                  style: Theme.of(context).textTheme.bodySmall,
                )),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.height / 4.3,
                width: double.infinity,
                color: const Color(0xFFf3f0f0),
                child: Obx(() {
                  if (controller.profileLoading.value) {
                    return const Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Center(child: CircularProgressIndicator()),
                    );
                  }
                  return Column(
                    children: [
                      //-- Profile Information
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Image.asset("assets/image/dp.png",
                                height: 70, width: 70, fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //-- Name
                                Row(
                                  children: [
                                    Text(controller.user.value.firstName,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium),
                                    const SizedBox(width: 5),
                                    Text(controller.user.value.lastName,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium),
                                  ],
                                ),

                                //-- Phone Number
                                Text(
                                  controller.user.value.phoneNumber,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(fontSize: 13),
                                ),
                                const SizedBox(height: 10),
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
                                        size: 14, color: Colors.grey),
                                    const Icon(Icons.star,
                                        size: 14, color: Colors.grey),
                                  ],
                                ),
                                Text("Total Reviews(100)",
                                    style:
                                        Theme.of(context).textTheme.bodySmall)
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [
                                  Icon(Icons.email,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                                  const SizedBox(width: 5),
                                  Text(controller.user.value.email,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: SizedBox(
                                height: 35,
                                width: 70,
                                child: Material(
                                  color: const Color(0xFF8282fa),
                                  borderRadius: BorderRadius.circular(30),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(30),
                                    onTap: () {
                                      // Get.to(() => const ChatPage());
                                    },
                                    child: Center(
                                      child: Text(
                                        "Verify",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                                fontSize: 12,
                                                color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                }),
              ),

              //-- Profile Settings
              const SizedBox(
                height: 20,
              ),
              ListTile(
                  onTap: () {
                    Get.to(() => const PaymentHistoryScreen());
                  },
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 13.0),
                    child: SvgPicture.asset("assets/image/payment.svg"),
                  ),
                  title: Text("Payment History",
                      style: Theme.of(context).textTheme.bodyLarge)),

              ListTile(
                  onTap: () {
                    Get.to(() => const CardHistoryScreen());
                  },
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 13.0),
                    child: SvgPicture.asset("assets/image/card.svg"),
                  ),
                  title: Text("Card History",
                      style: Theme.of(context).textTheme.bodyLarge)),
              ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 13.0),
                    child: Icon(Icons.pie_chart_rounded,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                  title: Text("App Notification",
                      style: Theme.of(context).textTheme.bodyLarge),
                  trailing: Switch(value: true, onChanged: (value) {})),
              ListTile(
                  onTap: () {
                    Get.to(() => const InviteScreen());
                  },
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 13.0),
                    child: SvgPicture.asset("assets/image/group.svg"),
                  ),
                  title: Text("Invites",
                      style: Theme.of(context).textTheme.bodyLarge)),
              ListTile(
                  onTap: () {
                    Get.to(() => const UserAppSettings());
                  },
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 13.0),
                    child: Icon(Icons.settings,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                  title: Text("App Settings",
                      style: Theme.of(context).textTheme.bodyLarge)),
              ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 13.0),
                    child: Icon(Icons.help,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                  title: Text("Help",
                      style: Theme.of(context).textTheme.bodyLarge)),

              //-- Logout Button
              const SizedBox(
                height: 45,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, bottom: 10),
                child: GestureDetector(
                  onTap: () {
                    LogoutlWarning.showWarning();
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/image/exit.svg"),
                      const SizedBox(
                        width: 5,
                      ),
                      Text("Logout",
                          style: Theme.of(context).textTheme.bodyLarge)
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
