import 'package:expense_tracker_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  //Light Theme
  static final lightTheme = ThemeData(
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.lightBackground,

    colorScheme: const ColorScheme.light(
      primary: AppColors.lightPrimary,
      secondary: AppColors.lightSecondary,
      onPrimary: AppColors.lightbodyMedium,
      onPrimaryContainer: AppColors.lightonPrimaryContainer,
      onSecondaryContainer: AppColors.lightonSecondaryContainer,
      onSecondaryFixed: AppColors.lightonSecondaryFixed,
      primaryContainer: AppColors.lightPrimaryContainer,
    ),

    textTheme: const TextTheme(
      labelLarge: TextStyle(
        color: AppColors.lightSecondary,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(color: AppColors.lightbodyMedium, fontSize: 18),
      labelMedium: TextStyle(
        color: AppColors.lightSecondary,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
  //Dark Theme
}
