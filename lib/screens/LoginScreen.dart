// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iyenova/screens/CreateAccountScreen.dart';
import 'package:iyenova/screens/VerifyOTP.dart';
import 'package:iyenova/widgets/textbox.dart';
import 'package:iyenova/widgets/appbutton.dart';

class LoginScreen extends StatelessWidget {
  static const String id = "login-screen";
  const LoginScreen({Key? key}) : super(key: key);

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
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: (() {
                    Navigator.pushNamed(context, CreateAccount.id);
                  }),
                  icon: Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                'Victoria,',
                style: GoogleFonts.poppins(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              SizedBox(height: 7),
              Text(
                'Welcome Back!',
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              Text(
                'Input your password to login into your account',
                style: GoogleFonts.poppins(fontSize: 12, color: Colors.black),
              ),
              SizedBox(
                height: 50,
              ),
              TextInputWidgett(labeltext: "Password"),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Forgot Password?",
                    style:
                        GoogleFonts.poppins(fontSize: 11, color: Colors.black),
                  ),
                  Text(
                    " Reset",
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
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: Center(
                  child: AppButton(
                    label: 'Login',
                    backgroundColor: Colors.black,
                    onPressed: () {
                      Navigator.pushNamed(context, VerificationScreen.id);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style:
                        GoogleFonts.poppins(fontSize: 11, color: Colors.black),
                  ),
                  Text(
                    " Sign up",
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
        ),
      ),
    );
  }
}
