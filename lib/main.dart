// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iyenova/screens/OpeningScreen.dart';
import 'package:iyenova/screens/onboardingscreen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: OpeningScreen.id, routes: {
      OnboardingScreenOne.id: (context) => OnboardingScreenOne(),
      OpeningScreen.id: (context) => OpeningScreen(),
    });
  }
}
