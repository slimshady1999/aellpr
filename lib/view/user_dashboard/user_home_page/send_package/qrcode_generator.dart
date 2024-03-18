import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

//-- QR code page 1
class QRCodePage1 extends StatelessWidget {
  const QRCodePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/image/scan.svg"),
                  TextButton(
                      onPressed: () {
                        Get.to(() => const QRCodePage2());
                      },
                      child: Text("Scan",
                          style: Theme.of(context).textTheme.bodySmall))
                ],
              ),
              const SizedBox(height: 100),
              Image.asset(
                "assets/image/barcode1.png",
              ),
              const SizedBox(height: 100),
              Text("Scan the QR code to",
                  style: Theme.of(context).textTheme.bodySmall),
              Text("confirm your Aellpr pickup",
                  style: Theme.of(context).textTheme.bodySmall)
            ],
          ),
        ));
  }
}

//-- QR code page 2
class QRCodePage2 extends StatelessWidget {
  const QRCodePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            const SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.only(left: 85.0),
              child: Image.asset(
                "assets/image/barcode1.png",
              ),
            ),
            const SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.only(left: 85.0),
              child: Text("Align the QR code within",
                  style: Theme.of(context).textTheme.bodySmall),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 85.0),
              child: Text("the frame to scan",
                  style: Theme.of(context).textTheme.bodySmall),
            )
          ],
        ));
  }
}
