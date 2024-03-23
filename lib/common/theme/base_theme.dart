import 'package:flutter/material.dart';
import 'package:food_app_with_admin_pannel/common/theme/app_text_theme.dart';

class AppBaseTheme {
  static final lightTheme = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Colors.black,
      onPrimary: Colors.black38,
      secondary: Colors.greenAccent,
      background: Colors.white,
      error: Colors.red,
      onSecondary: Colors.white,
      onError: Colors.red,
      onBackground: Colors.white,
      surface: Colors.green,
      onSurface: Colors.blue,

    ),
    textTheme: AppTextTheme.lightTextTheme,
  );
}
