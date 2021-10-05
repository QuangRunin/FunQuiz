import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    backgroundColor: Colors.white,
    buttonColor: Colors.green
  );
  static final dark = ThemeData.dark().copyWith(
      backgroundColor: Colors.red,
      buttonColor: Colors.blueAccent
  );
}