import 'package:expense_tracker_app/core/routes/app_routes.dart';
import 'package:expense_tracker_app/views/screens/onboarding/create_budget_screen.dart';
import 'package:expense_tracker_app/views/screens/onboarding/demo_screen.dart';
import 'package:expense_tracker_app/views/screens/onboarding/home_screen.dart';
import 'package:expense_tracker_app/views/screens/onboarding/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppPages {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.demoScreen:
        return MaterialPageRoute(builder: (_) => DemoScreen());
      case AppRoutes.budgetScreen:
        return MaterialPageRoute(builder: (_) => CreateBudgetScreen());
      case AppRoutes.welcomeScreen:
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
      // case AppRoutes.homeScreen:
      //   return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(),
            body: Center(child: Text("Page Not Found")),
          ),
        );
    }
  }
}
