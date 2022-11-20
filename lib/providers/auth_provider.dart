import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  String? _token;

  login(String email, String password) {
    //TODO: Peticion http

    this._token = '23232323232fadasmdkajdklasjdklada,sd,asm,dassef';
    print('Token JWT: $_token');

    //TODO: Guardar token en lugar seguro y tiene que ir al dashboard
    
    notifyListeners();
  }
}
