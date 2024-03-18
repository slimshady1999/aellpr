import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InviteScreen extends StatelessWidget {
  const InviteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Invite and Earn",
              style: Theme.of(context).textTheme.titleLarge),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //-- Image
              Container(
                  margin: const EdgeInsets.only(top: 20, right: 43, left: 43),
                  height: 300,
                  width: double.infinity,
                  child: Image.asset("assets/image/invite1.png",
                      fit: BoxFit.contain)),

              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 43, right: 43),
                child: Text(
                    textAlign: TextAlign.center,
                    "Receive 400  when someone signup  using your referral link and place first request ",
                    style: Theme.of(context).textTheme.bodyLarge),
              ),

              const SizedBox(
                height: 30,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3.9,
                width: double.infinity,
                color: const Color(0xFFf3f0f0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 24, top: 20),
                      child: Text(
                          textAlign: TextAlign.start,
                          "Your custom invitation link",
                          style: Theme.of(context).textTheme.bodyLarge),
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      margin:
                          const EdgeInsets.only(left: 30, right: 30, top: 30),
                      color: Colors.white,
                      child: Center(
                        child: Text("aellpr.com/ref/ridwan_referral123",
                            style: Theme.of(context).textTheme.bodyLarge),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //-- Copy Link Button
                        Container(
                          margin: const EdgeInsets.only(top: 20, left: 24),
                          height: 45,
                          width: MediaQuery.of(context).size.width / 2.6,
                          child: Material(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(30),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(18),
                              onTap: () {
                                // controller.login();
                              },
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset("assets/image/copy.svg",
                                        height: 17,
                                        width: 17,
                                        color: Colors.white),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: Text(
                                        "Copy Link",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                                fontSize: 13,
                                                color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),

                        //-- Copy Link Button
                        Container(
                          margin: const EdgeInsets.only(top: 20, right: 24),
                          height: 45,
                          width: MediaQuery.of(context).size.width / 2.6,
                          child: Material(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(30),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(18),
                              onTap: () {
                                // controller.login();
                              },
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.share,
                                        color: Colors.white),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 3.0),
                                      child: Text(
                                        "Share Link",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                                fontSize: 13,
                                                color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
