import 'package:admin_dashboard/ui/buttons/link_text.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: Colors.black,
      child: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 370),
          child: Form(
              child: Column(
            children: [
              //Email
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: BuildInputDecoration(
                    hint: 'Ingrese su correo',
                    label: 'Email',
                    icon: Icons.email_outlined),
              ),
//separator los campos
              SizedBox(height: 20),
              //Contraseña
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: BuildInputDecoration(
                    hint: '*********',
                    label: 'Contraseña',
                    icon: Icons.lock_outlined),
              ),
              SizedBox(height: 20),
              LinkText(
                text: 'Nueva Cuenta',
                onPressed: () {
                  //Navigator.pushNamed(context, Flurorauter.registerRoute);
                },
              ),

              //Validator(),
            ],
          )),
        ),
      ),
    );
  }

  InputDecoration BuildInputDecoration({
    required String hint,
    required String label,
    required IconData icon,
  }) {
    return InputDecoration(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white.withOpacity(0.3)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white.withOpacity(0.3)),
      ),
      hintText: hint,
      labelText: label,
      prefixIcon: Icon(icon, color: Colors.white.withOpacity(0.7)),
      labelStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
      hintStyle: TextStyle(color: Colors.grey),
    );
  }
}
