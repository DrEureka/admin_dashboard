import 'package:admin_dashboard/services/local_storage.dart';
import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  String? _token;

  login(String email, String password) {
    //TODO: Peticion http

    _token = '23232323232fadasmdkajdklasjdklada,sd,asm,dassef';
    //guardo el token en el local storage
    LocalStorage.prefs.setString('token', _token!);
    // print('Token JWT: $_token');
    //busco la JWT en el local storage
    LocalStorage.prefs.getString('token');
    //TODO: Guardar token en lugar seguro y tiene que ir al dashboard

    notifyListeners();
  }
}
