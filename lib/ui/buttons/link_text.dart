import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LinkText extends StatefulWidget {
  //muestra el texto de linksBar
  final String text;
  //recibe un void del mouse
  final Function? onPressed;
//el constructor recibe el texto y el void
  const LinkText({required this.text, super.key, this.onPressed});

  @override
  State<LinkText> createState() => _LinkTextState();
}

class _LinkTextState extends State<LinkText> {
  //booleano para saber si esta sobre el texto o no.
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //Este widget es para detectar cuando se hace click en el texto
      onTap: () {
        if (widget.onPressed != null) {
          widget.onPressed!();
        }
      },
      child: MouseRegion(
        //funcion que se ejecuta cuando el mouse entra al widget
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() => isHover = true),
        onExit: (_) => setState(() => isHover = false),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          //Estilo del texto
          child: Text(
            widget.text,
            style: GoogleFonts.montserrat(
              color: Colors.white.withOpacity(0.7),
              fontSize: 15,
              fontWeight: FontWeight.bold,
              //Si el mouse esta encima del texto cambia el estilo
              decoration:
                  isHover ? TextDecoration.underline : TextDecoration.none,
            ),
          ),
        ),
      ),
    );
  }
}
