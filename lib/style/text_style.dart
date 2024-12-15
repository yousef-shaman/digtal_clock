import 'package:digtal_clock/style/colors.dart';
import 'package:flutter/material.dart';

class AllTextStyle {

  /* Definining Main-Text style */
  static TextStyle mainText(BuildContext context) => TextStyle(
    decorationColor: primaryColorDarkTheme,
    decorationThickness: 2,
    color: Theme.of(context).colorScheme.primary,
    fontSize: 128.0,
    fontWeight: FontWeight.w100,
    letterSpacing: 5.5,
    // Text shadow
    shadows: [
      Shadow(
        color: Theme.of(context).colorScheme.primary,
        blurRadius: 6,
        offset: Offset.infinite),
      Shadow(
        color: Theme.of(context).colorScheme.shadow,
        blurRadius: 9,
      ),
      Shadow(
        color: Theme.of(context).colorScheme.shadow,
        blurRadius: 16,
      ),
    ],
  );

  /* Definining Sub-Text style */
  static TextStyle subText(BuildContext context) => TextStyle(
    color: Theme.of(context).colorScheme.secondary,
    fontSize: 118.0,
    fontWeight: FontWeight.w800,
    letterSpacing: 15.5,
  );
}
