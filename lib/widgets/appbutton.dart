// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.label,
    this.side,
    this.backgroundColor,
    this.onPressed,
  }) : super(key: key);

  final String label;
  final Color? backgroundColor;
  final BorderSide? side;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0.0,
        primary: backgroundColor,
        fixedSize: Size(240, 50),
        side: side,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        label,
        style: GoogleFonts.poppins(
          color: Colors.white,
        ),
      ),
    );
  }
}
