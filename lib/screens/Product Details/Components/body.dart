import 'package:flutter/material.dart';
import 'package:iyenova/screens/Product Details/product.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.share),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
