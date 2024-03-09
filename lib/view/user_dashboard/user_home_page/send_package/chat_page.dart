import 'package:aellpr/view/user_dashboard/user_home_page/send_package/call_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back, color: Colors.black, size: 20)),
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(right: 25),
          child: SizedBox(
              // width: 100,
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage("assets/image/dp.png"),
              ),
              SizedBox(
                width: 5,
              ),
              Text("Kelvin Blak",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black))
            ],
          )),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
                onPressed: () {
                  Get.to(() => const CallPage());
                },
                icon: const CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Icon(Icons.phone, color: Colors.white, size: 20),
                )),
          ),
        ],
      ),
      body: Stack(children: [
        //-- Text
        Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 1.0,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 200,
                      margin: const EdgeInsets.only(top: 35, right: 10),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 93, 61, 61),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              topRight: Radius.circular(15))),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                            textAlign: TextAlign.start,
                            "Did you get it? if do you please let me know, okay",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),

        //-- Send message
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: Colors.white,
            height: 60,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_box,
                        color: Theme.of(context).colorScheme.primary,
                      )),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: "",
                            contentPadding:
                                const EdgeInsets.only(top: 31, left: 10),
                            filled: true,
                            fillColor: const Color(0xFFf3f0f0),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(5)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.send,
                        color: Theme.of(context).colorScheme.primary,
                      )),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
