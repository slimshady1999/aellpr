import 'package:aellpr/controllers/auth_controllers/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UploadDp extends GetView {
  const UploadDp({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                // height: MediaQuery.of(context).size.height / 2.8,
                width: MediaQuery.of(context).size.width,
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 35),
                        child: Text(
                          "Pick a profile picture",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 10),
                        child: Text("Have a favourite selfie? upload it now..",
                            style: Theme.of(context).textTheme.bodySmall),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 45),
                          width: MediaQuery.of(context).size.width,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                height: 155,
                                width: 155,
                                child: Image.asset("assets/image/dp.png",
                                    fit: BoxFit.cover),
                              ),
                              Positioned(
                                left: 205,
                                top: 90,
                                child: CircleAvatar(
                                    backgroundColor: const Color.fromARGB(
                                        255, 235, 234, 234),
                                    radius: 30,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.add, size: 35))),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),

            //-- Bottom Buttons

            //-- Register button

            const SizedBox(
              height: 20,
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //-- Next Button
                  Container(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: Material(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(30),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () {},
                        child: Center(
                          child: Text(
                            "Next",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),

                  //-- Skip Button
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 30, right: 30, top: 20, bottom: 20),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          // color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                onPressed: () {
                                  controller.signup();
                                },
                                child: Text(
                                  "Skip for now!",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
