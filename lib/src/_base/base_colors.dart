import 'package:flutter/material.dart';

class BaseColors {
  static Color get primary => const Color(0xFF1f3a94);
  static MaterialColor get primaryMaterial => toMaterial(color: primary);

  static Color get actionButtonColor => const Color(0xFF4c6bd7);

  static MaterialColor toMaterial({Color color}) {
    return MaterialColor(
      color.value,
      <int, Color>{
        50: color,
        100: color,
        200: color,
        300: color,
        400: color,
        500: color,
        600: color,
        700: color,
        800: color,
        900: color,
      },
    );
  }
}
