import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Se crea una clase para el slpash layout
class SplashLayout extends StatelessWidget {
  const SplashLayout({super.key});

  @override
  Widget build(BuildContext context) {
    //Se crea un Scaffold para el layout
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const CircularProgressIndicator(),
          const SizedBox(height: 20),
          Text('Cheking...', style: GoogleFonts.roboto(fontSize: 15)),
        ]),
      ),
    );
  }
}
