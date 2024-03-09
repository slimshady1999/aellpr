import 'package:aellpr/configurations/validations/form_validation.dart';
import 'package:aellpr/controllers/products_controller/product_controller.dart';
import 'package:aellpr/view/user_dashboard/user_home_page/send_package/package_third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class PackageSecondScreen extends StatelessWidget {
  const PackageSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(ProductQuantityController());
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(Icons.arrow_back, color: Colors.white, size: 20),
              )),
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(right: 25),
            child: SizedBox(
                // width: 100,
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    radius: 8,
                    child: const Text("1",
                        style: TextStyle(
                            fontSize: 6,
                            fontWeight: FontWeight.w600,
                            color: Colors.white))),
                Container(
                    height: 2,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(5))),
                CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    radius: 8,
                    child: const Text("2",
                        style: TextStyle(
                            fontSize: 6,
                            fontWeight: FontWeight.w600,
                            color: Colors.white))),
                Container(
                    height: 2,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        //  color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(5))),
                const CircleAvatar(
                    backgroundColor: Colors.grey,
                    // backgroundColor: Theme.of(context).colorScheme.primary,
                    radius: 8,
                    child: Text("3",
                        style: TextStyle(
                            fontSize: 6,
                            fontWeight: FontWeight.w600,
                            color: Colors.white))),
              ],
            )),
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //-- Choose Transportation type
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.only(left: 25, bottom: 20),
                  child: Text("Transportation Preference",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                ),
                SizedBox(
                    width: double.infinity,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          //-- First Transport system
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              height: 140,
                              width: 220,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: const Color(0xFFffdfc9))),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: SvgPicture.asset(
                                        'assets/image/Public_Transports.svg',
                                        semanticsLabel: 'My SVG Image',
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(bottom: 5, top: 7),
                                      child: Text("Public Transport",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black)),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(bottom: 5),
                                      child: Text("From",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.black)),
                                    ),
                                    const Text("N2500 - 5000",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black)),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          //-- Second Transport system
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              height: 140,
                              width: 220,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: const Color(0xFFffdfc9))),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: SvgPicture.asset(
                                        'assets/image/private_car.svg',
                                        semanticsLabel: 'My SVG Image',
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(bottom: 5, top: 7),
                                      child: Text("Private Transport",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black)),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(bottom: 5),
                                      child: Text("From",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.black)),
                                    ),
                                    const Text("N2500 - 5000",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black)),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          //-- Third Transport system
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              height: 140,
                              width: 220,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: const Color(0xFFffdfc9))),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: SvgPicture.asset(
                                        'assets/image/Train.svg',
                                        semanticsLabel: 'My SVG Image',
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(bottom: 5, top: 7),
                                      child: Text("Train Transport",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black)),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(bottom: 5),
                                      child: Text("From",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.black)),
                                    ),
                                    const Text("N2500 - 5000",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black)),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          //-- Fourth Transport system
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              height: 140,
                              width: 220,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: const Color(0xFFffdfc9))),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: SvgPicture.asset(
                                        'assets/image/Boat.svg',
                                        semanticsLabel: 'My SVG Image',
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(bottom: 5, top: 7),
                                      child: Text("Bus Transport",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black)),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(bottom: 5),
                                      child: Text("From",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.black)),
                                    ),
                                    const Text("N2500 - 5000",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),

                //-- Package Type
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text("Package Type",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFFf3f0f0),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  // child: DropdownButton(
                  //     value: 2,
                  //     items: const [
                  //       DropdownMenuItem(
                  //           child: Text("Hand Held",
                  //               style: TextStyle(
                  //                   fontSize: 17,
                  //                   fontWeight: FontWeight.w400,
                  //                   color: Colors.black))),
                  //       DropdownMenuItem(
                  //           child: Text("Back Pack",
                  //               style: TextStyle(
                  //                   fontSize: 17,
                  //                   fontWeight: FontWeight.w400,
                  //                   color: Colors.black))),
                  //       DropdownMenuItem(
                  //           child: Text("Car Boot",
                  //               style: TextStyle(
                  //                   fontSize: 17,
                  //                   fontWeight: FontWeight.w400,
                  //                   color: Colors.black))),
                  //     ],
                  //     onChanged: (value) {})
                ),

                //-- Receiver Info
                const SizedBox(height: 25),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text("Enter Receiver Information",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 20, top: 15),
                  child: Column(
                    children: [
                      TextFormField(
                          //controller: controller.accountNumber,
                          validator: (value) =>
                              FormValidation.fullnameVerification(value),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              prefixIcon:
                                  Image.asset("assets/image/naira_mini.png"),
                              hintText: "Enter receiver name",
                              hintStyle: const TextStyle(
                                  fontSize: 13.6,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black),
                              contentPadding:
                                  const EdgeInsets.only(top: 31, left: 10),
                              filled: true,
                              fillColor: const Color(0xFFf3f0f0),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(30)))),
                      const SizedBox(height: 10),
                      TextFormField(
                          //controller: controller.accountNumber,
                          validator: (value) =>
                              FormValidation.fullnameVerification(value),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              prefixIcon:
                                  Image.asset("assets/image/naira_mini.png"),
                              hintText: "Enter receiver phone number",
                              hintStyle: const TextStyle(
                                  fontSize: 13.6,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black),
                              contentPadding:
                                  const EdgeInsets.only(top: 31, left: 10),
                              filled: true,
                              fillColor: const Color(0xFFf3f0f0),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(30)))),
                    ],
                  ),
                ),

                //-- Product Estimated weight
                const SizedBox(height: 28),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text("Note/Package Descriptio",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFFf3f0f0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                      //controller: controller.accountNumber,
                      validator: (value) =>
                          FormValidation.fullnameVerification(value),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText:
                              "Enter your package description or leave a note",
                          hintStyle: const TextStyle(
                              fontSize: 11.6,
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30)))),
                ),

                //-- Continue Button
                Container(
                  margin: const EdgeInsets.only(
                      top: 20, left: 25, right: 25, bottom: 25),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: Material(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(30),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(30),
                      onTap: () {
                        Get.to(() => const PackageThirdScreen());
                      },
                      child: Center(
                        child: Text(
                          "Continue",
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
          ),
        ));
  }
}
