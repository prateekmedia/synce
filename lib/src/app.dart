import 'package:flutter/material.dart';
import 'package:synce/src/constants/app_colors.dart';
import 'package:synce/src/utils/extensions/color/swatch.dart';

import 'features/home/presentation/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Synce',
      theme: ThemeData(
        primarySwatch: AppColors.primaryColor.toMaterialColor,
        primaryColor: AppColors.primaryColor,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        primarySwatch: AppColors.primaryColor.toMaterialColor,
        primaryColor: AppColors.primaryColor,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
