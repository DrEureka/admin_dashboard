import 'package:admin_dashboard/providers/auth_provider.dart';
import 'package:admin_dashboard/router/router.dart';
import 'package:admin_dashboard/ui/layouts/auth/auth_layout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  //Llamo a la funcion configureRoutes
  Flurorauter.configureRoutes();
  //Ejecuto la App
  runApp(const AppSate());
}

class AppSate extends StatelessWidget {
  const AppSate({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: MyApp(),
    );
  }
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
          return AuthLayout(child: child!);
        },
        //barra de scroll color gris
        theme: ThemeData.light().copyWith(
          scrollbarTheme: ScrollbarThemeData().copyWith(
            thumbColor:
                MaterialStateProperty.all(Color.fromARGB(110, 207, 201, 201)),
          ),
        ));
  }
}
