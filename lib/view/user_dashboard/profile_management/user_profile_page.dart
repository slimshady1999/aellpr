import 'package:aellpr/configurations/loading_screen/shimmer_loading.dart';
import 'package:aellpr/controllers/dispay_user_info_controller/users_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserEditProfileScreen extends StatelessWidget {
  const UserEditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Obx(
        () {
          if (controller.profileLoading.value) {
            return const CustomShimmerLoading(
                height: 20, width: 30, color: Colors.grey);
          }
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //-- Back button and page title
                Container(
                  margin: const EdgeInsets.only(top: 6),
                  width: double.infinity,
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 30),
                      child: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                          )),
                    ),
                    const Text("Edit Profile",
                        style: TextStyle(fontSize: 20, color: Colors.black))
                  ]),
                ),

                //-- Profile image and name section
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: double.infinity,
                  height: 180,
                  color: const Color(0xFFf3f0f0),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: IconButton(
                              onPressed: () {
                                // Get.back();
                              },
                              icon: Icon(Icons.edit,
                                  color:
                                      Theme.of(context).colorScheme.primary)),
                        ),
                      ],
                    ),
                    SizedBox(
                        height: 80,
                        width: 80,
                        child: Image.asset("assets/image/dp.png",
                            fit: BoxFit.cover)),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(controller.user.value.firstName.toString(),
                              style: const TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black)),
                          const SizedBox(width: 6),
                          Text(controller.user.value.lastName.toString(),
                              style: const TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black)),
                        ],
                      ),
                    )
                  ]),
                ),

                //-- Text Form field with user data
                const SizedBox(height: 40),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("Email Address",
                      style: TextStyle(
                          fontSize: 14.6,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
                  child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: controller.user.value.email.toString(),
                          contentPadding:
                              const EdgeInsets.only(top: 31, left: 10),
                          filled: true,
                          fillColor: const Color(0xFFf3f0f0),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30)))),
                ),

                //-- Text Form field with user data
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("Mobile Number",
                      style: TextStyle(
                          fontSize: 14.6,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
                  child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          hintText:
                              controller.user.value.phoneNumber.toString(),
                          contentPadding:
                              const EdgeInsets.only(top: 31, left: 10),
                          filled: true,
                          fillColor: const Color(0xFFf3f0f0),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30)))),
                ),

                //-- Text Form field with user data
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("Home Address",
                      style: TextStyle(
                          fontSize: 14.6,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
                  child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          hintText: "1 Shinna Street, Ebute metta, Lagos State",
                          hintStyle: const TextStyle(fontSize: 13),
                          contentPadding:
                              const EdgeInsets.only(top: 31, left: 10),
                          filled: true,
                          fillColor: const Color(0xFFf3f0f0),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30)))),
                ),

                //-- Save button
                //-- Bottom Buttons
                Container(
                  margin: const EdgeInsets.only(top: 80, left: 25, right: 25),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: Material(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(30),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(30),
                      onTap: () {
                        // controller.login();
                      },
                      child: Center(
                        child: Text(
                          "Save",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontSize: 13),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      )),
    );
  }
}
