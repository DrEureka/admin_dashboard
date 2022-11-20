import 'package:admin_dashboard/router/router.dart';
import 'package:admin_dashboard/ui/layouts/auth/auth_layout.dart';
import 'package:flutter/material.dart';

void main() {
  //Llamo a la funcion configureRoutes
  Flurorauter.configureRoutes();
  //Ejecuto la App
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Admin Dashboard',
      initialRoute: Flurorauter.rootRoute,
      onGenerateRoute: Flurorauter.router.generator,
      builder: (_, child) {
        //recibe el child que es el widget que se va a mostrar
        return AuthLayout();
      },
    );
  }
}
