// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:iyenova/screens/LoginScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iyenova/widgets/textboxOTP.dart';
import 'package:iyenova/widgets/textbox.dart';

class VerificationScreen extends StatelessWidget {
  static const String id = "verification-screen";
  const VerificationScreen({Key? key}) : super(key: key);

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
            Row(
              children: [
                TextboxOTP(),
              ],
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
            )
          ],
        ),
      )),
    );
  }
}
