import 'package:admin_dashboard/ui/buttons/link_text.dart';
import 'package:flutter/material.dart';

import '../../router/router.dart';
import '../buttons/custom_outlined_button.dart';
import '../inputs/custom_inputs.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

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
              //Nombre
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: CustomInputs.loginInputDecoration(
                    hint: 'Ingrese su nombre',
                    label: 'Nombre',
                    icon: Icons.person_outline),
              ),
//separator los campos
              SizedBox(height: 20),
//apellido
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: CustomInputs.loginInputDecoration(
                    hint: 'Ingrese su apellido',
                    label: 'Apellido',
                    icon: Icons.person_outline),
              ),
//separator los campos
              SizedBox(height: 20),
              //Email
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: CustomInputs.loginInputDecoration(
                    hint: 'Ingrese su correo',
                    label: 'Email',
                    icon: Icons.email_outlined),
              ),
//separator los campos
              SizedBox(height: 20),
              //Contraseña
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: CustomInputs.loginInputDecoration(
                    hint: '*********',
                    label: 'Contraseña',
                    icon: Icons.lock_outlined),
              ),
              SizedBox(
                height: 20,
              ),
              CustomOutlinedButton(onPressed: () {}, text: 'Crear cuenta'),
              SizedBox(
                height: 10,
              ),
              LinkText(
                text: 'Volver al login',
                onPressed: () {
                  Navigator.pushNamed(context, Flurorauter.loginRoute);
                },
              ),

              //Validator(),
            ],
          )),
        ),
      ),
    );
  }
}
