import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderProfile extends StatelessWidget {
  final String imagePath;
  final String userName;

  const HeaderProfile(
      {super.key, required this.imagePath, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(imagePath),
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hai,',
              style: GoogleFonts.poppins(
                color: Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              userName,
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
