import 'package:flutter/material.dart';
import 'package:admin_dashboard/ui/shared/side_bar.dart';
import '../../../providers/side_menu_provider.dart';
import '../../shared/nav_bar.dart';

class DashboardLayout extends StatefulWidget {
  final Widget child;

  const DashboardLayout({required this.child, super.key});

  @override
  State<DashboardLayout> createState() => _DashboardLayoutState();
}

//Inicializo el widget del sidebar stack
class _DashboardLayoutState extends State<DashboardLayout>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SideMenuProvider.menuController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 235, 235),
      body: Stack(
        children: [
          Row(
            // ignore: prefer_cons
            // t_literals_to_create_immutables
            children: [
              //traigo el sidebar
              if (size.width >= 700) const SideBar(),
              //Se crea el menu lateral para 700px
              Expanded(
                //Expanded es para que ocupe todo el espacio disponible
                child: Column(
                  // column es la parte que toma luego del row
                  children: [
                    //Nav Bar
                    const NavBar(),

                    //view
                    Expanded(
                      child: Padding(
                        padding:
                            // ignore: prefer_const_constructors
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: widget.child,
                      ),
                    ),
                  ],
                ),
              ),
              //contenedor para el contenido view side
            ],
          ),
          if (size.width < 700)
            //cuando utilizamos un builder estamos reconstruyedo el widget
            AnimatedBuilder(
              animation: SideMenuProvider.menuController,
              builder: (context, _) => Stack(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  //Para hacer Background transparente
                  if (SideMenuProvider.isOpen)
                    Opacity(
                      opacity: SideMenuProvider.opacity.value,
                      // duration: const Duration(milliseconds: 250),
                      child: GestureDetector(
                        onTap: () => SideMenuProvider.closeMenu(),
                        child: Container(
                          width: size.width,
                          height: size.height,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),

                  Transform.translate(
                    offset: Offset(SideMenuProvider.movement.value, 0),
                    child: (const SideBar()),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
