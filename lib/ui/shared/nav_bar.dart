import 'package:flutter/material.dart';
import 'package:admin_dashboard/ui/shared/widgets/notifications_indicator.dart';
import 'package:admin_dashboard/ui/shared/widgets/search_text.dart';
import 'package:admin_dashboard/ui/shared/widgets/nav_bar_avatar.dart';

import '../../providers/side_menu_provider.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: 50,
      decoration: buildBoxDecoration(),
      //Creo un row porque cada item va estar pegado uno al lado del otro.
      child: Row(
        children: [
          if (size.width <= 700)
            //Icono de menu
            IconButton(
              //llamo a la funcion side menu provider para la apertura
              onPressed: () => SideMenuProvider.openMenu(),
              icon: const Icon(Icons.menu_outlined),
            ),
          const SizedBox(width: 5),
          //buscador input
          if (size.width > 370)
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 250),
              child: const SearchText(),
            ),

          //Espacio entre el titulo y el icono de notificaciones
          const Spacer(),
          //Icono de notificaciones
          const NotificationsIndicator(),

          const NavBarAvatar(),
          const SizedBox(width: 5),
          //Icono de perfil
        ],
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
          ),
        ],
      );
}
