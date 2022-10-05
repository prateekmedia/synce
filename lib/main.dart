import 'package:flutter/material.dart';
import 'package:synce/src/utils/configuration.dart';

import 'src/app.dart';

void main() async {
  await Configuration.init();
  runApp(const MyApp());
}
