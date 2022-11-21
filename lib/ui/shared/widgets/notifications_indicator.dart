import 'package:flutter/material.dart';

class NotificationsIndicator extends StatelessWidget {
  const NotificationsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    //el stack es para poner un widget encima de otro
    return Stack(
      children: [
        const Icon(Icons.notifications_outlined),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            width: 7,
            height: 7,
            decoration: buildBoxDecoration(),
          ),
        ),
      ],
    );
  }

  BoxDecoration buildBoxDecoration() {
    return const BoxDecoration(
      color: Colors.red,
      shape: BoxShape.circle,
    );
  }
}
