import 'package:admin_dashboard/providers/side_menu_provider.dart';
import 'package:admin_dashboard/ui/shared/widgets/logo.dart';
import 'package:admin_dashboard/ui/shared/widgets/menu_items.dart';
import 'package:admin_dashboard/ui/shared/widgets/text_separator.dart';
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: double.infinity,
      decoration: buildBoxDecoration(),
      child: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          //tengo logo
          const Logo(),
          const SizedBox(height: 50),
          //Menu
          const TextSeparator(text: 'Main'),
          MenuItems(
            text: 'DashBoard',
            icon: Icons.compass_calibration_outlined,
            //isActive permite saber si esta activo o no
            //  isActive: false,
            //Llamo a mi SideMenu Provider y cierro el menu
            onPressed: () => SideMenuProvider.closeMenu(),
          ),
          MenuItems(
            text: 'Solicitudes',
            icon: Icons.question_answer_outlined,
            //isActive permite saber si esta activo o no
            //  isActive: false,
            onPressed: () {},
          ),
          MenuItems(
            text: 'Diseños',
            icon: Icons.image_outlined,
            //isActive permite saber si esta activo o no
            //  isActive: false,
            onPressed: () {},
          ),
          MenuItems(
            text: 'Pedidos',
            icon: Icons.shopping_cart_outlined,
            //isActive permite saber si esta activo o no
            //  isActive: false,
            onPressed: () {},
          ),
          const SizedBox(height: 50),
          const TextSeparator(text: 'Administración'),
          MenuItems(
            text: 'Usuarios',
            icon: Icons.people_outline_outlined,
            //isActive permite saber si esta activo o no
            //  isActive: false,
            onPressed: () {},
          ),
          MenuItems(
            text: 'Categorias',
            icon: Icons.category_outlined,
            //isActive permite saber si esta activo o no
            //  isActive: false,
            onPressed: () {},
          ),
          MenuItems(
            text: 'Productos',
            icon: Icons.shopping_bag_outlined,
            //isActive permite saber si esta activo o no
            //  isActive: false,
            onPressed: () {},
          ),
          const TextSeparator(text: ''),

          MenuItems(
            text: 'Cerrar Sesión',
            icon: Icons.logout_outlined,
            //isActive permite saber si esta activo o no
            //  isActive: false,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(255, 9, 6, 32),
            Color.fromARGB(255, 22, 15, 85),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      );
}
