import 'package:flutter/material.dart';

class TextInputWidgett extends StatelessWidget {
  final String labeltext;
  const TextInputWidgett({Key? key, required this.labeltext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labeltext,
      ),
    );
  }
}
