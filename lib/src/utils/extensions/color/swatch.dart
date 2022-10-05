import 'package:flutter/material.dart';

extension ColorSwatchEx on Color {
  MaterialColor get toMaterialColor {
    return MaterialColor(
      value,
      {
        50: withOpacity(.1),
        100: withOpacity(.2),
        200: withOpacity(.3),
        300: withOpacity(.4),
        400: withOpacity(.5),
        500: withOpacity(.6),
        600: withOpacity(.7),
        700: withOpacity(.8),
        800: withOpacity(.9),
        900: withOpacity(1),
      },
    );
  }
}
