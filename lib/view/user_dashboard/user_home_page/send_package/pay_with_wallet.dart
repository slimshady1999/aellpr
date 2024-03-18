import 'package:flutter/material.dart';
import 'package:get/get.dart';

walletPayment() {
  // final controller = Get.put(EnterPinController());
  showModalBottomSheet(
      enableDrag: true,
      backgroundColor: Colors.white,
      context: Get.overlayContext!,
      isDismissible: true,
      builder: (context) => Container(
          height: MediaQuery.of(context).size.height / 2.4,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //-- Cancel Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24, top: 20),
                        child: IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(Icons.cancel_outlined)),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: Text("Your wallet will be debited upon",
                        style: Theme.of(context).textTheme.bodyLarge),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: Text(
                        textAlign: TextAlign.center,
                        "comfirmation of delivery",
                        style: Theme.of(context).textTheme.bodyLarge),
                  ),

                  Container(
                    margin: const EdgeInsets.only(
                        left: 24, right: 24, top: 15, bottom: 15),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFFf3f0f0),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.account_balance_wallet,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      title: Text("Wallet (N34,877)",
                          style: Theme.of(context).textTheme.bodySmall),
                      trailing: Icon(
                        Icons.check,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),

                  //-- Continue button
                  const SizedBox(height: 10),
                  Container(
                    margin:
                        const EdgeInsets.only(left: 24, right: 24, bottom: 25),
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Material(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(30),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () {
                          Get.back();
                        },
                        child: Center(
                          child: Text(
                            "Accept",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(fontSize: 13, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
          )));
}
