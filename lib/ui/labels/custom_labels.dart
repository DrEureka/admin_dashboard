import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//se armo una clase para modificar los h1 y p
class CustomLabels {
  static TextStyle h1 = GoogleFonts.roboto(
    fontSize: 40,
    fontWeight: FontWeight.w400,
  );

  static TextStyle h2 = GoogleFonts.roboto(
    fontSize: 30,
    fontWeight: FontWeight.w400,
  );
  static TextStyle h3 = GoogleFonts.roboto(
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static TextStyle h4 = GoogleFonts.roboto(
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );

  static TextStyle p = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
}
