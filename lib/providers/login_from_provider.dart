import 'package:admin_dashboard/providers/auth_provider.dart';
import 'package:flutter/widgets.dart';

class LoginFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formkey = new GlobalKey<FormState>();

  final AuthProvider authProvider;
  //manejo de los campos del formulario login
  String email = '';
  String password = '';

  LoginFormProvider(this.authProvider);

  validateForm() {
    if (formkey.currentState!.validate()) {
      print('Form Validado');
      print('$email === $password');
    } else {
      print('Form Invalido');
    }
  }
}