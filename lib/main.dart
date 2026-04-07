import 'package:expense_tracker_app/core/routes/app_pages.dart';
import 'package:expense_tracker_app/core/routes/app_routes.dart';
import 'package:expense_tracker_app/core/services/navigation_services.dart';
import 'package:expense_tracker_app/core/themes/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigationServices.navigatorKey,
      initialRoute: AppRoutes.demoScreen,
      onGenerateRoute: AppPages.generateRoute,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,

      themeMode: ThemeMode.light,
    );
  }
}
