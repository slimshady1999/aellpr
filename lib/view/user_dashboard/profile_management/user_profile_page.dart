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
            return const Padding(
              padding: EdgeInsets.only(top: 25),
              child: Center(child: CircularProgressIndicator()),
            );
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
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(fontSize: 19)),
                          const SizedBox(width: 6),
                          Text(controller.user.value.lastName.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(fontSize: 19)),
                        ],
                      ),
                    )
                  ]),
                ),

                //-- Text Form field with user data
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text("Email Address",
                      style: Theme.of(context).textTheme.bodySmall),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 5),
                  child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: controller.user.value.email.toString(),
                          hintStyle: Theme.of(context).textTheme.bodySmall,
                          contentPadding:
                              const EdgeInsets.only(top: 31, left: 10),
                          filled: true,
                          fillColor: const Color(0xFFf3f0f0),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20)))),
                ),

                //-- Text Form field with user data
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text("Mobile Number",
                      style: Theme.of(context).textTheme.bodySmall),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 5),
                  child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          hintText:
                              controller.user.value.phoneNumber.toString(),
                          contentPadding:
                              const EdgeInsets.only(top: 31, left: 10),
                          hintStyle: Theme.of(context).textTheme.bodySmall,
                          filled: true,
                          fillColor: const Color(0xFFf3f0f0),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20)))),
                ),

                //-- Text Form field with user data
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text("Home Address",
                      style: Theme.of(context).textTheme.bodySmall),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 5),
                  child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          hintText: "1 Shinna Street, Ebute metta, Lagos State",
                          hintStyle: Theme.of(context).textTheme.bodySmall,
                          contentPadding:
                              const EdgeInsets.only(top: 31, left: 10),
                          filled: true,
                          fillColor: const Color(0xFFf3f0f0),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20)))),
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
                              .bodyLarge!
                              .copyWith(color: Colors.white),
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
