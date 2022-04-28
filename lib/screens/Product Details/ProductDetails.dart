import 'package:flutter/material.dart';
import 'package:iyenova/screens/Product Details/Components/body.dart';
import 'package:iyenova/screens/Product Details/product.dart';

class ProductDetails extends StatelessWidget {
  final Product product;
  static const String id = "product-details";
  const ProductDetails({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(product: product),
    );
  }
}
