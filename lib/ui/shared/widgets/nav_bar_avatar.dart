import 'package:flutter/material.dart';

class NavBarAvatar extends StatelessWidget {
  const NavBarAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: SizedBox(
        width: 30,
        height: 30,
        child: Image.network(
            'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
      ),
    );
  }
}
