import 'package:admin_dashboard/ui/buttons/link_text.dart';
import 'package:flutter/material.dart';

class LinksBar extends StatelessWidget {
  const LinksBar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.black,
      //agrego una condicion si el size es menor a 1000 entonces no hago nada, si es mayor a 1000 entoncecs dejo null el width
      height: (size.width > 1000) ? size.height * 0.06 : null,
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          LinkText(
              text: 'Nosotros',
              //funcion onPressed que recibe un void que lo muestra en consola en este caso.
              onPressed: () {
                // print('Nosotros');
              }),
          const LinkText(text: 'Registro'),
          const LinkText(text: 'Login'),
          const LinkText(text: 'Atención al cliente'),
          const LinkText(text: 'Contacto'),
          const LinkText(text: 'Terminos y condiciones'),
          const LinkText(text: 'Status'),
        ],
      ),
    );
  }
}
