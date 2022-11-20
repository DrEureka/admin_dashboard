import 'package:flutter/widgets.dart';

class LoginFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formkey = new GlobalKey<FormState>();

  //manejo de los campos del formulario login
  String email = '';
  String password = '';

  validateForm() {
    if (formkey.currentState!.validate()) {
      print('Form Validado');
    } else {
      print('Form Invalido');
    }
  }
}
