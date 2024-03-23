import 'package:flutter/material.dart';
import 'package:food_app_with_admin_pannel/common/theme/base_theme.dart';
import 'package:food_app_with_admin_pannel/core/auth/splash_screen/splash_screen.dart';
import 'package:food_app_with_admin_pannel/core/user_panel/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: AppBaseTheme.lightTheme,
      home: const HomeScreen(),
    );
  }
}
