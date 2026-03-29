import 'package:expense_tracker_app/core/themes/app_theme.dart';
import 'package:expense_tracker_app/views/screens/onboarding/create_budget_screen.dart';
import 'package:expense_tracker_app/views/screens/onboarding/demo_screen.dart';
import 'package:expense_tracker_app/views/screens/onboarding/home_screen.dart';
import 'package:expense_tracker_app/views/screens/onboarding/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,

      themeMode: ThemeMode.light,
    );
  }
}
