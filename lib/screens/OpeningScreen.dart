import 'package:flutter/material.dart';
import 'package:iyenova/screens/onboardingscreen1.dart';

class OpeningScreen extends StatelessWidget {
  static const String id = "Opening_Screen";
  const OpeningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, OnboardingScreenOne.id);
        },
        child: const Center(
          child: Image(
            image: AssetImage("assets/icons/whitelogo.png"),
          ),
        ),
      ),
    );
  }
}
