import 'dart:convert';

class AuthResponse {
  AuthResponse({
    required this.usuario,
    required this.token,
  });

  Usuario usuario;
  String token;

  factory AuthResponse.fromJson(String str) =>
      AuthResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AuthResponse.fromMap(Map<String, dynamic> json) => AuthResponse(
        usuario: Usuario.fromMap(json["usuario"]),
        token: json["token"],
      );

  Map<String, dynamic> toMap() => {
        "usuario": usuario.toMap(),
        "token": token,
      };
}

class Usuario {
  Usuario({
    required this.rol,
    required this.estado,
    required this.google,
    required this.nombre,
    required this.email,
    required this.uid,
  });

  String rol;
  bool estado;
  bool google;
  String nombre;
  String email;
  String uid;

  factory Usuario.fromJson(String str) => Usuario.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Usuario.fromMap(Map<String, dynamic> json) => Usuario(
        rol: json["rol"],
        estado: json["estado"],
        google: json["google"],
        nombre: json["nombre"],
        email: json["email"],
        uid: json["uid"],
      );

  Map<String, dynamic> toMap() => {
        "rol": rol,
        "estado": estado,
        "google": google,
        "nombre": nombre,
        "email": email,
        "uid": uid,
      };
}
