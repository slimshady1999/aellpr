import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/image/dp.png",
              height: 70, width: 70, fit: BoxFit.cover),
          const SizedBox(height: 9),
          const Text(
              textAlign: TextAlign.start,
              "calling",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Colors.black)),
          const Text(
              textAlign: TextAlign.start,
              "Kelvin Blak",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black)),

          //-- Buttons

          Padding(
            padding: const EdgeInsets.only(top: 89.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: const Color(0xFFffdfc9),
                    child: GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset("assets/image/speaker.svg")),
                  ),
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.red,
                  child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: SvgPicture.asset("assets/image/call.svg",
                          height: 25)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: const Color(0xFFffdfc9),
                    child: GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                            "assets/image/speaker_cancel.svg")),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
