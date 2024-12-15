import 'package:digtal_clock/style/colors.dart';
import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade100,
    primary: mainTextColor,
    secondary: subTextColorDarkTheme,
    shadow: mainTextShadowDarkTheme,
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade900,
    primary: mainTextColorDarkTheme,
    secondary: subTextColorDarkTheme,
    shadow: mainTextShadowDarkTheme,
  ),
);
