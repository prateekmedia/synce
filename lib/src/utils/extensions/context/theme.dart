import 'package:flutter/material.dart';

extension ThemeExtended on BuildContext {
  ThemeData get theme => Theme.of(this);

  bool get isDark => theme.brightness == Brightness.dark;
  TextTheme get textTheme => theme.textTheme;
}
