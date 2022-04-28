// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  final ImageProvider image;
  const ProfilePicture({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: image, fit: BoxFit.fill)),
    );
  }
}
