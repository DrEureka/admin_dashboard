import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/auth_provider.dart';
import '../../providers/login_from_provider.dart';

import '../../router/router.dart';
import 'package:admin_dashboard/ui/buttons/link_text.dart';

import '../buttons/custom_outlined_button.dart';
import '../inputs/custom_inputs.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return ChangeNotifierProvider(
      create: (_) => LoginFormProvider(),
      child: Builder(builder: (context) {
        //llamo a la instancia del provider para poder usarla
        final loginFormProvider =
            Provider.of<LoginFormProvider>(context, listen: false);

        return Container(
          margin: EdgeInsets.only(top: 50),
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: Colors.black,
          child: Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: 370),
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                //validador de login con la llave global formkey
                key: loginFormProvider.formkey,
                child: Column(
                  children: [
                    //Email
                    TextFormField(
                      //validador de formato de mail
                      validator: (value) {
                        if (!EmailValidator.validate(value ?? ''))
                          return 'Email no valido';
                        return null;
                      },
                      onChanged: (value) => loginFormProvider.email = value,

                      //falta validador de email
                      style: TextStyle(color: Colors.white),
                      decoration: CustomInputs.loginInputDecoration(
                          hint: 'Ingrese su correo',
                          label: 'Email',
                          icon: Icons.email_outlined),
                    ),
                    //separator los campos
                    SizedBox(height: 10),
                    //Contraseña
                    TextFormField(
                      //validador de clave
                      onChanged: (value) => loginFormProvider.password = value,
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
                          label: 'Contraseña',
                          icon: Icons.lock_outlined),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 10,
                    ),
                    CustomOutlinedButton(
                        onPressed: () {
                          loginFormProvider.validateForm();
                        },
                        text: 'Ingresar'),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 10,
                    ),
                    LinkText(
                      text: 'Nueva Cuenta',
                      onPressed: () {
                        //metodo de fluro para navegar a la ruta de registro
                        Navigator.pushNamed(context, Flurorauter.registerRoute);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
