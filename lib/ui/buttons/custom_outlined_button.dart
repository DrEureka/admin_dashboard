import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Color color;
  final bool isFilled;

  const CustomOutlinedButton(
      {required this.onPressed,
      //dejo fijo el color
      this.color = Colors.blue,
      //dejo fijo el isFilled en false
      this.isFilled = false,
      required this.text,
      super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
        side: MaterialStateProperty.all(BorderSide(color: color)),
        backgroundColor: MaterialStatePropertyAll(
            isFilled ? color.withOpacity(0.3) : Colors.transparent),
      ),
      
      onPressed: () => onPressed(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
