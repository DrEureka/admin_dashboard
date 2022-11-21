import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//se creo un widget stateful para el menu de items por la animacion
class MenuItems extends StatefulWidget {
  final String text;
  final IconData icon;
  final bool isActive;
  final Function onPressed;
  const MenuItems(
      {required this.text,
      required this.icon,
      this.isActive = false,
      required this.onPressed,
      super.key});

  @override
  State<MenuItems> createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  //se creo una propiedad para que lo tome el mouse region
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      color: isHovered
          ? Colors.white.withOpacity(0.1)
          : widget.isActive
              ? Colors.white.withOpacity(0.2)
              : Colors.transparent,
      //material se utiliza en este caso para hacer el spash en conjuntoi con el inkwell
      child: Material(
        //al ser transparente da ese efecto de animacion
        color: Colors.transparent,
        child: InkWell(
          onTap: widget.isActive ? null : () => widget.onPressed(),
          //separacion con el padding
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            //mouse region para el efecto de hover cuando entra el mouse
            child: MouseRegion(
              onEnter: (_) => setState(() => isHovered = true),
              onExit: (_) => setState(() => isHovered = false),
              child: Row(
                //row permite la alinear los iconos y texto
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    widget.icon,
                    color: widget.isActive
                        ? Colors.blue
                        : isHovered
                            ? Colors.white
                            : Colors.white.withOpacity(0.5),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    widget.text,
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      color: widget.isActive
                          ? Colors.blue
                          : isHovered
                              ? Colors.white
                              : Colors.white.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
