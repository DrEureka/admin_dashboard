import 'package:flutter/material.dart';

class BackgroundLayer extends StatelessWidget {
  const BackgroundLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: null,
        //metodo para poner una imagen de fondo que se cuentra el "decocation: buildboxdecoration"
        decoration: buildBoxDecoration(),
        child: Container(
          constraints: BoxConstraints(maxWidth: 400),
          //el siguiente child es para poner el logo de la app
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Image(
                image: AssetImage('twitter-white-logo.png'),
                width: 200,
              ),
            ),
          ),
        ),
      ),
    );
  }

//se creo un metodo para que pueda adquirir la imagen de fondo modificable desde los assets
  BoxDecoration buildBoxDecoration() {
    return BoxDecoration(
      image: DecorationImage(
        image: AssetImage('twitter-bg.png'),
        fit: BoxFit.cover,
      ),
    );
  }
}
