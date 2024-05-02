import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFFF4B4B4);
const List<Color> gradientViolet = [Color(0xFFa18cd1), Color(0xFFfbc2eb)];

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

const MaterialColor blackmode =
    MaterialColor(_blackmodePrimaryValue, <int, Color>{
  50: Color(0xFFEDEDED),
  100: Color(0xFFD2D1D1),
  200: Color(0xFFB4B3B3),
  300: Color(0xFF969495),
  400: Color(0xFF807D7E),
  500: Color(_blackmodePrimaryValue),
  600: Color(0xFF615E5F),
  700: Color(0xFF565354),
  800: Color(0xFF4C494A),
  900: Color(0xFF3B3839),
});
const int _blackmodePrimaryValue = 0xFF696667;

const MaterialColor blackmodeAccent =
    MaterialColor(_blackmodeAccentValue, <int, Color>{
  100: Color(0xFFF69CBA),
  200: Color(_blackmodeAccentValue),
  400: Color(0xFFFF2D73),
  700: Color(0xFFFF1462),
});
const int _blackmodeAccentValue = 0xFFF26D99;
