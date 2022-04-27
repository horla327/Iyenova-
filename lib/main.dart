// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iyenova/screens/CreateAccountScreen.dart';
import 'package:iyenova/screens/HomePage.dart';
import 'package:iyenova/screens/LoginScreen.dart';
import 'package:iyenova/screens/OnboardingScreen2.dart';
import 'package:iyenova/screens/OpeningScreen.dart';
import 'package:iyenova/screens/TransactionPinSetup.dart';
import 'package:iyenova/screens/VerifyOTP.dart';
import 'package:iyenova/screens/onboardingscreen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: CreateAccount.id, routes: {
      OpeningScreen.id: (context) => OpeningScreen(),
      OnboardingScreenOne.id: (context) => OnboardingScreenOne(),
      OnboardingScreenTwo.id: (context) => OnboardingScreenTwo(),
      CreateAccount.id: (context) => CreateAccount(),
      LoginScreen.id: (context) => LoginScreen(),
      VerificationScreen.id: (context) => VerificationScreen(),
      TransactionPinScreen.id: (context) => TransactionPinScreen(),
      HomePage.id: (context) => HomePage(),
    });
  }
}
