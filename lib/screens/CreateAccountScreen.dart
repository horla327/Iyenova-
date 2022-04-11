// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iyenova/screens/LoginScreen.dart';
import 'package:iyenova/widgets/appbutton.dart';
import 'package:iyenova/widgets/textbox.dart';

class CreateAccount extends StatelessWidget {
  static const String id = "create_account";
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              bottom: 10.0, top: 10.0, right: 25, left: 25),
          child: SingleChildScrollView(
            child: Column(children: [
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: (() {}),
                  icon: Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Create An Account',
                  style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ),
              SizedBox(height: 7),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome to Iyenova!',
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ),
              Text(
                'Create an account to experience all the goodies we have to offer... we are excited for you.',
                style: GoogleFonts.poppins(fontSize: 12, color: Colors.black),
              ),
              SizedBox(
                height: 15,
              ),
              TextInputWidgett(labeltext: "Firstname"),
              SizedBox(
                height: 12.0,
              ),
              TextInputWidgett(labeltext: "Lastname"),
              SizedBox(
                height: 12.0,
              ),
              TextInputWidgett(labeltext: "Email Address"),
              SizedBox(
                height: 12.0,
              ),
              TextInputWidgett(labeltext: "Phone Number"),
              SizedBox(
                height: 12.0,
              ),
              TextInputWidgett(labeltext: "Password"),
              SizedBox(
                height: 12.0,
              ),
              TextInputWidgett(labeltext: "Confirm Password"),
              SizedBox(
                height: 12.0,
              ),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          'By clicking on the button below you agree to Iyenova’s',
                      style: GoogleFonts.poppins(
                          fontSize: 11, color: Colors.black),
                    ),
                    TextSpan(
                      text: ' Terms of Service',
                      style: GoogleFonts.poppins(
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ' &',
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: ' Privacy Policy',
                      style: GoogleFonts.poppins(
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: AppButton(
                  label: 'Create Account',
                  backgroundColor: Colors.black,
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style:
                        GoogleFonts.poppins(fontSize: 11, color: Colors.black),
                  ),

                  // Text(
                  //   " Sign in",
                  //   style: GoogleFonts.poppins(
                  //       fontSize: 12,
                  //       fontWeight: FontWeight.w700,
                  //       color: Colors.black),
                  // ),
                  TextButton(
                    child: Text(
                      "Sign in",
                      style: GoogleFonts.poppins(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
