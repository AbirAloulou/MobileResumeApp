import 'package:flutter/material.dart';
import '../colors.dart';

ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      background: primary.shade300,
      //primary color
      primary: primary,
      //secondary text color
      secondary: Colors.black,
      //highlight text color
    ));

ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      background: blackmode.shade200,
      //primary color
      primary: blackmode,
      //secondary text color
      secondary: blackmode.shade800,
    ));
