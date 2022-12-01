import 'package:flutter/material.dart';

class NotificationsService {
  static GlobalKey<ScaffoldMessengerState> messengerKey =
      GlobalKey<ScaffoldMessengerState>();
  static showSnackbarError(String message) {
    final snackBar = SnackBar(
        backgroundColor: Colors.white.withOpacity(0.9),
        content:
            Text(message, style: TextStyle(color: Colors.red, fontSize: 18)));
    messengerKey.currentState!.showSnackBar(snackBar);
  }
}
