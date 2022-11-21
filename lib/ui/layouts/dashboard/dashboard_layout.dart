import 'package:flutter/material.dart';
import 'package:admin_dashboard/ui/shared/side_bar.dart';
import '../../shared/nav_bar.dart';

class DashboardLayout extends StatelessWidget {
  final Widget child;

  const DashboardLayout({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 235, 235),
      body: Row(
        // ignore: prefer_cons
        // t_literals_to_create_immutables
        children: [
          //traigo el sidebar
          const SideBar(),
          //Se crea el menu lateral para 700px
          Expanded(
            //Expanded es para que ocupe todo el espacio disponible
            child: Column(
              // column es la parte que toma luego del row
              children: [
                //Nav Bar
                const NavBar(),

                //view
                Expanded(child: child),
              ],
            ),
          ),
          //contenedor para el contenido view side
        ],
      ),
    );
  }
}
