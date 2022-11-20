import 'package:admin_dashboard/ui/layouts/auth/widgets/custom_title.dart';
import 'package:flutter/material.dart';
import 'package:admin_dashboard/ui/layouts/auth/widgets/background_layer.dart';

class AuthLayout extends StatelessWidget {
  final Widget child;
  const AuthLayout({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //el listview es para que se pueda hacer scroll y sepa que tipo de pantalla es
        body: ListView(
      //el physics es para que no se pueda hacer scroll
      physics: const ClampingScrollPhysics(),
      children: [
        _DesktopBody(child: child),
        //mobile
        //links o map site
      ],
    ));
  }
}

class _DesktopBody extends StatelessWidget {
  //solicito el child del layout
  final Widget child;
  const _DesktopBody({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    //trae el tamaño de la pantalla.
    final size = MediaQuery.of(context).size;
    return Container(
      //tamaño de la pantalla
      width: size.width,
      height: size.height,
      color: Colors.red,
      child: Row(
        children: [
          //izquierda imagen
          BackgroundLayer(),
          //derecha login y formulario
          Container(
            width: 600,
            height: double.infinity,
            color: Colors.black,
            child: Column(
              children: [
                //titulo
                //logo y titulo de la app en la parte superior escalado
                SizedBox(
                  height: 20,
                ),
                CustomTitle(),
                SizedBox(
                  height: 50,
                ),
                //formulario
                //traigo el child del formulario del login
                Expanded(child: child)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
