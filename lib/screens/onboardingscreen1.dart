// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class OnboardingScreenOne extends StatelessWidget {
  static const String id = "Onboarding_Screen_One";
  const OnboardingScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/onboarding_1.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
