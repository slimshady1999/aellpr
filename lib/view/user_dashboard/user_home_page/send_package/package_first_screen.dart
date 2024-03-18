import 'package:aellpr/configurations/validations/form_validation.dart';
import 'package:aellpr/controllers/products_controller/product_controller.dart';
import 'package:aellpr/view/user_dashboard/user_home_page/send_package/package_second_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PackageFirstScreen extends StatelessWidget {
  const PackageFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductQuantityController());
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
                          color: Colors.grey,
                          // color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(5))),
                  const CircleAvatar(
                      backgroundColor: Colors.grey,
                      // backgroundColor: Theme.of(context).colorScheme.primary,
                      radius: 8,
                      child: Text("2",
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
            )),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //-- Package Inforations
                const SizedBox(height: 20),
                SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.circle,
                                  color: Theme.of(context).colorScheme.primary,
                                  size: 15),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 3, bottom: 3),
                                height: 75,
                                width: 3.4,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          const Color.fromARGB(
                                              255, 198, 198, 198),
                                          Theme.of(context).colorScheme.primary,
                                        ])),
                              ),
                              Icon(Icons.location_pin,
                                  color: Theme.of(context).colorScheme.primary,
                                  size: 20),
                            ],
                          ),
                        ),

                        //-- Pickup Point
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text("Pickup Point",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 20, top: 3),
                                    child: TextFormField(
                                        //controller: controller.accountNumber,
                                        validator: (value) =>
                                            FormValidation.fullnameVerification(
                                                value),
                                        keyboardType: TextInputType.text,
                                        decoration: InputDecoration(
                                            prefixIcon:
                                                const Icon(Icons.credit_card),
                                            hintText: "Location",
                                            hintStyle: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                            contentPadding:
                                                const EdgeInsets.only(
                                                    top: 31, left: 10),
                                            filled: true,
                                            fillColor: const Color(0xFFf3f0f0),
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide.none,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        30)))),
                                  ),

                                  //-- Drop Off Point
                                  const SizedBox(height: 13),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 6),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Text("Drop Off Point",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyLarge),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, right: 20, top: 3),
                                            child: TextFormField(
                                                //controller: controller.accountNumber,
                                                validator: (value) =>
                                                    FormValidation
                                                        .fullnameVerification(
                                                            value),
                                                keyboardType:
                                                    TextInputType.text,
                                                decoration: InputDecoration(
                                                    prefixIcon: const Icon(
                                                        Icons.credit_card),
                                                    hintText: "Location",
                                                    hintStyle: Theme.of(context)
                                                        .textTheme
                                                        .bodySmall,
                                                    contentPadding:
                                                        const EdgeInsets.only(
                                                            top: 31, left: 10),
                                                    filled: true,
                                                    fillColor:
                                                        const Color(0xFFf3f0f0),
                                                    border: OutlineInputBorder(
                                                        borderSide:
                                                            BorderSide.none,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                30)))),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),

                //-- Upload Product Image
                const SizedBox(height: 25),

                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text("Upload Product Image",
                      style: Theme.of(context).textTheme.bodyLarge),
                ),

                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.only(left: 24, right: 24, top: 20),
                    height: MediaQuery.of(context).size.height / 4.4,
                    width: double.infinity,
                    color: const Color(0xFFf3f0f0),
                    child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.upload,
                              color: Color(0xFFffdfc9), size: 90),
                        ]),
                  ),
                ),

                //-- Package Quantity
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("Package Quantity",
                      style: Theme.of(context).textTheme.bodyLarge),
                ),
                Obx(
                  () => Container(
                    margin: const EdgeInsets.only(left: 24, right: 24, top: 15),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFFf3f0f0),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                                controller.productValue.value.toString(),
                                style: const TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  controller.decreaseValue();
                                },
                                child: const CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Color(0xFFffdfc9),
                                    child: Icon(Icons.remove)),
                              ),
                              const SizedBox(width: 7),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    controller.increaseValue();
                                  },
                                  child: const CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Color(0xFFffdfc9),
                                      child: Icon(Icons.add)),
                                ),
                              )
                            ],
                          ),
                        ]),
                  ),
                ),

                //-- Product Amount
                const SizedBox(height: 25),
                const Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Text("Value of the product (Amount)",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 15),
                  child: TextFormField(
                      //controller: controller.accountNumber,
                      validator: (value) =>
                          FormValidation.fullnameVerification(value),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "1,500",
                          hintStyle: Theme.of(context).textTheme.bodySmall,
                          contentPadding:
                              const EdgeInsets.only(top: 31, left: 10),
                          filled: true,
                          fillColor: const Color(0xFFf3f0f0),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30)))),
                ),

                //-- Product Estimated weight
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text("Product estimated weight",
                      style: Theme.of(context).textTheme.bodyLarge),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 15),
                  child: TextFormField(
                      //controller: controller.accountNumber,
                      validator: (value) =>
                          FormValidation.fullnameVerification(value),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "0",
                          hintStyle: Theme.of(context).textTheme.bodySmall,
                          contentPadding:
                              const EdgeInsets.only(top: 31, left: 10),
                          filled: true,
                          fillColor: const Color(0xFFf3f0f0),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30)))),
                ),

                //-- Continue Button
                Container(
                  margin: const EdgeInsets.only(
                      top: 35, left: 24, right: 24, bottom: 25),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: Material(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(30),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(30),
                      onTap: () {
                        Get.to(() => const PackageSecondScreen());
                      },
                      child: Center(
                        child: Text(
                          "Continue",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontSize: 13, color: Colors.white),
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
