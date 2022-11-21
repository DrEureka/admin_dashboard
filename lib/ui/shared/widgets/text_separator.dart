import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextSeparator extends StatelessWidget {
  final String text;
  const TextSeparator({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.only(bottom: 5),
      child: Text(
        text,
        style: GoogleFonts.roboto(
          color: Colors.white.withOpacity(0.9),
          fontSize: 14,
          fontWeight: FontWeight.w200,
        ),
      ),
    );
  }
}
