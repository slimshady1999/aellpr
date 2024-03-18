import 'package:aellpr/controllers/introduction_controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends GetView {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    controller.currentPageIndex.value;
    return Scaffold(
      body: Stack(
        children: [
          //-- Page View
          PageView(
            physics: const BouncingScrollPhysics(),
            controller: controller.pageController,
            onPageChanged: (index) {
              controller.lastPage.value = (index == 2);
            },
            children: [
              firstScreen(context),
              secondScreen(context),
              thirdScreen(context)
            ],
          ),

          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(bottom: 20),
            child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {
                        controller.skipOnboardingScreen();
                      },
                      child: Text(
                        "skip",
                        style: Theme.of(context).textTheme.bodyLarge,
                      )),

                  SmoothPageIndicator(
                      controller: controller.pageController,
                      onDotClicked: (index) {
                        controller.smoothIndicatorDot();
                      },
                      count: 3,
                      effect: const ExpandingDotsEffect(
                          dotHeight: 8,
                          dotWidth: 8,
                          spacing: 8,
                          activeDotColor: Colors.grey,
                          dotColor: Color.fromARGB(255, 209, 209, 209))),

                  //-- Next button
                  controller.lastPage.value
                      ? SizedBox(
                          height: 42,
                          width: 110,
                          child: Material(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(30),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(30),
                              onTap: () {
                                controller.skipOnboardingScreen();
                              },
                              child: Center(
                                child: Text(
                                  "Get Started",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          fontSize: 14, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        )
                      : SizedBox(
                          height: 37,
                          width: 85,
                          child: Material(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(30),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(30),
                              onTap: () {
                                controller.moveToNextPage();
                              },
                              child: Center(
                                child: Text(
                                  "next",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          fontSize: 16, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

//-- First Screen
firstScreen(BuildContext context) {
  return Container(
    // padding: const EdgeInsets.only(left: 6, right: 10),
    //  color: const Color.fromARGB(255, 209, 209, 209),
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    decoration: const BoxDecoration(
        // color: Colors.black45,
        image: DecorationImage(
            fit: BoxFit.contain,
            alignment: Alignment.topCenter,
            colorFilter: ColorFilter.mode(
                Color.fromARGB(145, 0, 0, 0), BlendMode.darken),
            image: AssetImage(
              'assets/image/man1.png',
            ))),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20),
                child: Text(
                  "Anywhere and Anytime",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 9, left: 20, right: 25),
                child: Text(
                    "We will send your packages or anything to your destination..",
                    style: Theme.of(context).textTheme.bodySmall),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

//-- Second Screen
secondScreen(BuildContext context) {
  return Container(
    // padding: const EdgeInsets.only(left: 5, right: 10),
    decoration: const BoxDecoration(
        // color: Colors.black45,
        image: DecorationImage(
            fit: BoxFit.contain,
            alignment: Alignment.topCenter,
            colorFilter: ColorFilter.mode(
                Color.fromARGB(123, 0, 0, 0), BlendMode.darken),
            image: AssetImage(
              'assets/image/man2.png',
            ))),
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20),
                child: Text(
                  "Track your packages",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 9, left: 20, right: 25),
                child: Text(
                    "Track your delivery status in real time with navigation..",
                    style: Theme.of(context).textTheme.bodySmall),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

//-- Third Screen
thirdScreen(BuildContext context) {
  return Container(
    // padding: const EdgeInsets.only(left: 5, right: 10),
    decoration: const BoxDecoration(
        // color: Colors.black45,
        image: DecorationImage(
            fit: BoxFit.contain,
            alignment: Alignment.topCenter,
            colorFilter: ColorFilter.mode(
                Color.fromARGB(145, 0, 0, 0), BlendMode.darken),
            image: AssetImage(
              'assets/image/man3.png',
            ))),
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20),
                child: Text(
                  "Package received on time",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 9, left: 20, right: 25),
                child: Text(
                    "We provide the best delivery services to customers..",
                    style: Theme.of(context).textTheme.bodySmall),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
