import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen(
      {super.key,
      required this.animationImage,
      required this.title,
      required this.onPressed,
      required this.buttonText,
      required this.body});

  final String animationImage, title, body, buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Lottie.asset(animationImage)),
          const SizedBox(
            height: 30,
          ),
          Text(title, style: Theme.of(context).textTheme.titleLarge),

          //-- Retry Buttons
          SizedBox(
              height: 40,
              width: 160,
              child: Material(
                borderRadius: BorderRadius.circular(20),
                child: InkWell(
                  onTap: onPressed,
                  child: Text(buttonText,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.white)),
                ),
              )),
        ],
      ),
    );
  }
}
