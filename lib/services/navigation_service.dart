import 'package:flutter/material.dart';

class NavigationService {
  //creo un key global para navegar
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
// funcion para navegar a una ruta
  static navigateTo(String routeName) {
    return navigatorKey.currentState!.pushNamed(routeName);
  }

//armo un metodo para navegar y reemplazar la ruta
  static replaceTo(String routeName) {
    return navigatorKey.currentState!.pushReplacementNamed(routeName);
  }
}
