import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SuccessfulScreen extends StatelessWidget {
  const SuccessfulScreen(
      {super.key,
      required this.animationImage,
      required this.title,
      required this.text1,
      required this.text2,
      required this.onPressed,
      required this.buttonText});

  final String animationImage, title, text1, text2, buttonText;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Lottie.asset(
                    animationImage,
                  ),
                  Text(title,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 30)),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(text1,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                  ),
                  Text(text2,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: 16, fontWeight: FontWeight.w600)),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 65),
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Material(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(30),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: onPressed,
                    child: Center(
                      child: Text(
                        buttonText,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
