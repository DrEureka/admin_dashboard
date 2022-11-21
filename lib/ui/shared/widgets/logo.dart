import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      // ignore: prefer_const_literals_to_create_immutables
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Icon(Icons.bubble_chart_outlined, color: Colors.blue, size: 40),
        const SizedBox(width: 10),
        const Text(
          'Admin Dashboard',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w200,
          ),
        ),
      ]),
    );
  }
}
