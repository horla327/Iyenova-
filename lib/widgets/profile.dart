import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iyenova/widgets/constants.dart';

class Profile extends StatelessWidget {
  const Profile({required this.images, required this.uname});
  final ImageProvider images;
  final String uname;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFE5E5E5),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 12, bottom: 12, left: 16, right: 16),
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: images, fit: BoxFit.fill),
                  ),
                ),
              ),
              decoration: kGradientBoxDecoration,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              uname,
              style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
