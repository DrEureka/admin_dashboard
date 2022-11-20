import 'package:admin_dashboard/ui/buttons/link_text.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/register_from_provider.dart';
import '../../router/router.dart';
import '../buttons/custom_outlined_button.dart';
import '../inputs/custom_inputs.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => RegisterFormProvider(),
      child: Builder(builder: (context) {
        //llamo a la instancia del provider para poder usarla
        final registerFormProvider =
            Provider.of<RegisterFormProvider>(context, listen: false);

        return Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: Colors.black,
          child: Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: 370),
              child: Form(
                  autovalidateMode: AutovalidateMode.always,
                  key: registerFormProvider.formkey,
                  child: Column(
                    children: [
                      //Nombre
                      TextFormField(
                        onChanged: (value) =>
                            registerFormProvider.nombre = value,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Debe ingresar su Nombre';
                          }

                          return null; //si es null es correcto
                        },
                        style: TextStyle(color: Colors.white),
                        decoration: CustomInputs.loginInputDecoration(
                            hint: 'Ingrese su nombre',
                            label: 'Nombre*',
                            icon: Icons.person_outline),
                      ),
//separator los campos
                      SizedBox(height: 10),
//apellido
                      TextFormField(
                        onChanged: (value) =>
                            registerFormProvider.apellido = value,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Debe ingresar su Apellido';
                          }

                          return null; //si es null es correcto
                        },
                        style: TextStyle(color: Colors.white),
                        decoration: CustomInputs.loginInputDecoration(
                            hint: 'Ingrese su apellido',
                            label: 'Apellido*',
                            icon: Icons.person_outline),
                      ),
//separator los campos
                      SizedBox(height: 10),
                      //Email
                      TextFormField(
                        //validador de formato de mail
                        validator: (value) {
                          if (!EmailValidator.validate(value ?? ''))
                            return 'Email no valido';
                          return null;
                        },
                        onChanged: (value) =>
                            registerFormProvider.email = value,
                        style: TextStyle(color: Colors.white),
                        decoration: CustomInputs.loginInputDecoration(
                            hint: 'Ingrese su correo',
                            label: 'Email*',
                            icon: Icons.email_outlined),
                      ),
//separator los campos
                      SizedBox(height: 10),
                      //Contraseña
                      TextFormField(
                        //validador de clave
                        onChanged: (value) =>
                            registerFormProvider.password = value,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Ingrese su contraseña';
                          }
                          if (value.length < 6) {
                            return 'La contraseña debe tener al menos 6 caracteres';
                          }

                          return null; //si es null es correcto
                        },
                        //obscureText sirve para ocultar contraseña del form
                        obscureText: true,
                        style: TextStyle(color: Colors.white),
                        decoration: CustomInputs.loginInputDecoration(
                            hint: '*********',
                            label: 'Contraseña*',
                            icon: Icons.lock_outlined),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      CustomOutlinedButton(
                          onPressed: () {
                            registerFormProvider.validateForm();
                          },
                          text: 'Crear cuenta'),
                      SizedBox(
                        height: 5,
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
      }),
    );
  }
}
