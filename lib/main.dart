import 'package:admin_dashboard/providers/side_menu_provider.dart';
import 'package:admin_dashboard/ui/layouts/dashboard/dashboard_layout.dart';
import 'package:admin_dashboard/ui/layouts/splash/spash_layout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:admin_dashboard/providers/auth_provider.dart';
import 'package:admin_dashboard/router/router.dart';
import 'package:admin_dashboard/services/local_storage.dart';
import 'package:admin_dashboard/services/navigation_service.dart';
import 'package:admin_dashboard/ui/layouts/auth/auth_layout.dart';

void main() async {
  //Local storage para guardar las preferencias del usuario.
  await LocalStorage.configurePrefs();
  //Llamo a la funcion configureRoutes
  Flurorouter.configureRoutes();
  //Ejecuto la App
  runApp(const AppSate());
}

class AppSate extends StatelessWidget {
  const AppSate({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(lazy: false, create: (_) => AuthProvider()),
        //Agrego el provider de SideMenu y permite que se actualice mostrando false para activar los items del menu
        ChangeNotifierProvider(lazy: false, create: (_) => SideMenuProvider()),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Admin Dashboard',
        initialRoute: Flurorouter.rootRoute,
        onGenerateRoute: Flurorouter.router.generator,
        navigatorKey: NavigationService.navigatorKey,
        builder: (_, child) {
          final authProvider = Provider.of<AuthProvider>(context);
          if (authProvider.authStatus == AuthStatus.checking) {
            return const SplashLayout();
          }

          if (authProvider.authStatus == AuthStatus.authenticated) {
            return DashboardLayout(child: child!);
          } else {
            return AuthLayout(child: child!);
          }

          // localstorage para guardar las preferencias del usuario y levanto la JWT
          //print('Token:');
          //print(LocalStorage.prefs.getString('token'));
          //recibe el child que es el widget que se va a mostrar

          // return AuthLayout(child: child!);
          // return DashboardLayout(child: child!);
        },
        //barra de scroll color gris
        theme: ThemeData.light().copyWith(
          scrollbarTheme: const ScrollbarThemeData().copyWith(
            thumbColor: MaterialStateProperty.all(
                const Color.fromARGB(110, 207, 201, 201)),
          ),
        ));
  }
}
