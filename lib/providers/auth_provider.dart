import 'package:admin_dashboard/api/ConnApi.dart';
import 'package:admin_dashboard/router/router.dart';
import 'package:admin_dashboard/services/local_storage.dart';
import 'package:admin_dashboard/services/navigation_service.dart';

import 'package:flutter/material.dart';

//se crea un numerador de posibilidades
enum AuthStatus { checking, authenticated, notAuthenticated }

class AuthProvider with ChangeNotifier {
  String? _token;
  //Chequear el status del login
  AuthStatus authStatus = AuthStatus.checking;
  AuthProvider() {
    isAuthenticated();
  }
  login(String email, String password) {
    // ignore: todo
    //TODO: Peticion http

    _token = '23232323232fadasmdkajdklasjdklada,sd,asm,dassef';
    //guardo el token en el local storage
    LocalStorage.prefs.setString('token', _token!);
    // print('Token JWT: $_token');
    //busco la JWT en el local storage
    LocalStorage.prefs.getString('token');
    // ignore: todo
    //TODO: Guardar token en lugar seguro y tiene que ir al dashboard
    authStatus = AuthStatus.authenticated;
    notifyListeners();
    // authStatus = AuthStatus.authenticated;
    // isAuthenticated();
    NavigationService.replaceTo(Flurorouter.dashboardRoute);
  }

  register(String email, String password, String nombre, String apellido) {
    //aca mando lo que quiero grabar en la api
    final data = {
      'nombre': nombre,
      'apellido': apellido,
      'email': email,
      'password': password,
    };

    ConnApi.post('/usuarios', data).then((json) {
      print(json);
    }).catchError((e) {
      print('Error en: $e');
      //Mostrar un mensaje de error
    });

    // ignore: todo
    //TODO: Peticion http
    //_token = '23232323232fadasmdkajdklasjdklada,sd,asm,dassef';
    //guardo el token en el local storage
    //LocalStorage.prefs.setString('token', _token!);
    // print('Token JWT: $_token');
    //busco la JWT en el local storage
    // LocalStorage.prefs.getString('token');
    // ignore: todo
    //TODO: Guardar token en lugar seguro y tiene que ir al dashboard
    //authStatus = AuthStatus.authenticated;
    //notifyListeners();
    // authStatus = AuthStatus.authenticated;
    // isAuthenticated();
    NavigationService.replaceTo(Flurorouter.dashboardRoute);
  }

  Future<bool> isAuthenticated() async {
    if (LocalStorage.prefs.getString('token') == null) {
      authStatus = AuthStatus.notAuthenticated;
      notifyListeners();
      return false;
    }
    // ignore: todo
    //TODO: IR AL BACKEND Y COMPROBAR CONTRASEÑA/JWT
    await Future.delayed(const Duration(milliseconds: 1500));
    authStatus = AuthStatus.authenticated;
    notifyListeners();
    return true;
  }
}
