import 'package:flutter/widgets.dart';

class RegisterFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  //manejo de los campos del formulario login
  String email = '';
  String password = '';
  String nombre = '';
  String apellido = '';

  validateForm() {
    if (formkey.currentState!.validate()) {
      print('Form Validado');
      //  print('$email === $password');
      // print('$nombre === $apellido');
    } else {
      print('Form Invalido');
    }
  }
}
