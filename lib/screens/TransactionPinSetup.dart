// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:iyenova/screens/HomePage.dart';
import 'package:iyenova/screens/LoginScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iyenova/screens/VerifyOTP.dart';
import 'package:pinput/pinput.dart';
import 'package:iyenova/widgets/appbutton.dart';

class TransactionPinScreen extends StatefulWidget {
  static const String id = "trasanction-screen";
  const TransactionPinScreen({Key? key}) : super(key: key);

  @override
  State<TransactionPinScreen> createState() => _TransactionPinScreen();
}

class _TransactionPinScreen extends State<TransactionPinScreen> {
  final defaultPinTheme = PinTheme(
    width: 50,
    height: 50,
    textStyle: TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.circular(5),
    ),
  );

  // final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  //   border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
  //   borderRadius: BorderRadius.circular(8),
  // );

  // final submittedPinTheme = defaultPinTheme.copyWith(
  //   decoration: defaultPinTheme.decoration.copyWith(
  //     color: Color.fromRGBO(234, 239, 243, 1),
  //   ),
  // );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: (() {
                Navigator.pushNamed(context, VerificationScreen.id);
              }),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'A quick one, Victoria',
              style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            SizedBox(height: 30),
            Text(
              "Because we want you to have the safest experience, we'd like you to set up a 4-digit pin for your transactions.",
              style: GoogleFonts.poppins(fontSize: 12, color: Colors.black),
            ),
            Text(
              'Ensure to keep this digits SAFE with you.',
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Pinput(
                defaultPinTheme: defaultPinTheme,
                // focusedPinTheme: focusedPinTheme,
                // submittedPinTheme: submittedPinTheme,
                validator: (s) {
                  return s == '222222' ? null : 'Pin is incorrect';
                },
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
                onCompleted: (pin) => print(pin),
              ),
            ),
            SizedBox(
              height: 300,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: AppButton(
                label: 'Submit',
                backgroundColor: Colors.black,
                onPressed: () {
                  Navigator.pushNamed(context, HomePage.id);
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
