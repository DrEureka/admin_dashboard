import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardLayout extends StatelessWidget {
  final Widget child;

  const DashboardLayout({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            Text('Dashboard Layout', style: GoogleFonts.roboto(fontSize: 20)),
      ),
    );
  }
}
