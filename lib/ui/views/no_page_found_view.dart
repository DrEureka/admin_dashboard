import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoPageFoundView extends StatelessWidget {
  const NoPageFoundView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          '404 - No Page Found/Página no encontrada',
          style: GoogleFonts.montserratAlternates(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
