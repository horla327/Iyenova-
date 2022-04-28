// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iyenova/widgets/circlepicture.dart';

class Product {
  final String uname, name, dressname, price;
  final int id;
  final ImageProvider image;
  final ProfilePicture profile;

  Product({
    required this.id,
    required this.name,
    required this.uname,
    required this.image,
    required this.price,
    required this.dressname,
    required this.profile,
  });
}

List<Product> products = [
  Product(
    id: 1,
    name: 'BeeSee Stores',
    uname: "@bisi_fash",
    image: AssetImage('assets/images/woman2.png'),
    price: 'N14000.00',
    dressname: 'Midi Glitter Dress',
    profile: ProfilePicture(
      image: AssetImage('assets/images/neon.png'),
    ),
  ),
  Product(
    id: 2,
    name: 'RebeccaStan Beauty House',
    uname: "@RBH",
    image: AssetImage('assets/images/woman3.png'),
    price: 'N14000.00',
    dressname: 'Stretchy Body Con Dress',
    profile: ProfilePicture(
      image: AssetImage('assets/images/neon.png'),
    ),
  ),
  Product(
    id: 3,
    name: 'BeeSee Stores',
    uname: "@bisi_fash",
    image: AssetImage('assets/images/woman1.png'),
    price: 'N14000.00',
    dressname: 'Stretchy Body Con Dress',
    profile: ProfilePicture(
      image: AssetImage('assets/images/neon.png'),
    ),
  ),
];
