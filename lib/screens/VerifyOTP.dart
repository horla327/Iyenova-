// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:iyenova/screens/LoginScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iyenova/screens/TransactionPinSetup.dart';
import 'package:pinput/pinput.dart';
import 'package:iyenova/widgets/appbutton.dart';

class VerificationScreen extends StatefulWidget {
  static const String id = "verification-screen";
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  // final TextEditingController _pinPutController = TextEditingController();
  // final FocusNode _pinPutFocusNode = FocusNode();
  // final BoxDecoration pinPutDecoration = BoxDecoration(
  //   color: const Color.fromRGBO(43, 46, 66, 1),
  //   borderRadius: BorderRadius.circular(10.0),
  //   border: Border.all(
  //     color: const Color.fromRGBO(320, 203, 224, 1),
  //   ),
  // );
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: (() {
                Navigator.pushNamed(context, LoginScreen.id);
              }),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'OTP Verification',
              style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            SizedBox(height: 30),
            Text(
              'Just one more step left to go',
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            Text(
              'Please enter the OTP sent to +234 818 648 1346',
              style: GoogleFonts.poppins(fontSize: 12, color: Colors.black),
            ),
            SizedBox(
              height: 50,
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Didn't recieve the code?",
                  style: GoogleFonts.poppins(fontSize: 11, color: Colors.black),
                ),
                Text(
                  " Resend OTP",
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                // TextButton(
                //   child: Text(
                //     "Sign in",
                //     style: GoogleFonts.poppins(
                //         fontSize: 11,
                //         fontWeight: FontWeight.w700,
                //         color: Colors.black),
                //   ),
                //   onPressed: () {
                //     Navigator.pushNamed(context, LoginScreen.id);
                //   },
                // ),
              ],
            ),
            SizedBox(
              height: 270,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: AppButton(
                label: 'Verify',
                backgroundColor: Colors.black,
                onPressed: () {
                  Navigator.pushNamed(context, TransactionPinScreen.id);
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
