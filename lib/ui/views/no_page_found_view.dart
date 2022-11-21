import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoPageFoundView extends StatelessWidget {
  const NoPageFoundView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 0),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Text(
          '404 - No Page Found/Página no encontrada',
          style: GoogleFonts.montserratAlternates(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 150, 150, 150),
          ),
        ),
      ),
    );
  }
}
