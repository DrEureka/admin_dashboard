import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        //alineacion del logo
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'twitter-white-logo.png',
            width: 50,
            height: 50,
          ),
          // Separo el titulo del logo con el sizedbox
          SizedBox(height: 20),
          FittedBox(
            fit: BoxFit.contain,
            child: Text(
              'Titulo de la app',
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
