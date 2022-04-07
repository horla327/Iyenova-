// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:iyenova/widgets/appbutton.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreenTwo extends StatelessWidget {
  static const String id = "Onboarding_Screen_Two";
  const OnboardingScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/images/onboarding_2.png',
              width: 360,
              fit: BoxFit.cover,
              color: const Color.fromRGBO(0, 0, 0, 0.49),
              colorBlendMode: BlendMode.darken,
            ),
            Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image(
                      image: AssetImage("assets/icons/whitelogo.png"),
                      width: 70,
                    ),
                  ),
                ),
                SizedBox(
                  height: 330,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Get Styled',
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.black,
                  margin: EdgeInsets.only(left: 107),
                  padding: EdgeInsets.symmetric(
                    vertical: 13,
                    horizontal: 70,
                  ),
                  child: Text(
                    'by the best designers',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  left: 1,
                  right: 1,
                  bottom: 5,
                  child: Column(
                    children: [
                      SizedBox(height: 50),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: AppButton(
                          label: 'Login',
                          backgroundColor: Colors.transparent,
                          side: const BorderSide(
                            width: 3,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: AppButton(
                          label: 'Register',
                          backgroundColor: Colors.black,
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
