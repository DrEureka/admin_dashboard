import 'package:flutter/widgets.dart';

class RegisterFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  //manejo de los campos del formulario login
  String email = '';
  String password = '';
  String nombre = '';

  validateForm() {
    if (formkey.currentState!.validate()) {
      print('Form true');

      return true;
    } else {
      print('Form Invalido');
      return false;
    }
  }
}
