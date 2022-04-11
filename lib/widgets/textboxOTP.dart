// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextboxOTP extends StatefulWidget {
  const TextboxOTP({Key? key}) : super(key: key);

  @override
  State<TextboxOTP> createState() => _TextboxOTPState();
}

class _TextboxOTPState extends State<TextboxOTP> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      child: TextField(
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
        ],
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        autofocus: false,
        enabled: false,
        style: TextStyle(fontSize: 24.0, color: Colors.black),
      ),
    );
  }
}
