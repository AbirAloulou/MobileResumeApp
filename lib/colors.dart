import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFFF4B4B4);

const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFFEF6F6),
  100: Color(0xFFFCE9E9),
  200: Color(0xFFFADADA),
  300: Color(0xFFF7CBCB),
  400: Color(0xFFF6BFBF),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFFF3ADAD),
  700: Color(0xFFF1A4A4),
  800: Color(0xFFEF9C9C),
  900: Color(0xFFEC8C8C),
});
const int _primaryPrimaryValue = 0xFFF4B4B4;

const MaterialColor primaryAccent =
    MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_primaryAccentValue),
  400: Color(0xFFFFFFFF),
  700: Color(0xFFFFFFFF),
});
const int _primaryAccentValue = 0xFFFFFFFF;
