import 'package:flutter/material.dart';

class AppNavigators {
  AppNavigators._();

  static go(context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }
}
