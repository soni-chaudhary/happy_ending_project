import 'package:flutter/material.dart';

ThemeData dark = ThemeData(
  primaryColor: Colors.white,
  secondaryHeaderColor: Colors.white,
  disabledColor: Colors.white,
  errorColor: Color(0xFFdd3135),
  hintColor: Colors.white,
  colorScheme: ColorScheme.dark(primary: Colors.white, secondary: Colors.white),
  textButtonTheme:
      TextButtonThemeData(style: TextButton.styleFrom(primary: Colors.white)),
);
