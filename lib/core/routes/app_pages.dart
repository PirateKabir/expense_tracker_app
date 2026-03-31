import 'package:expense_tracker_app/core/routes/app_routes.dart';
import 'package:expense_tracker_app/views/screens/home/edit_home.dart';
import 'package:expense_tracker_app/views/screens/more/more_screen.dart';
import 'package:expense_tracker_app/views/screens/onboarding/create_budget_screen.dart';
import 'package:expense_tracker_app/views/screens/onboarding/demo_screen.dart';
import 'package:expense_tracker_app/views/screens/home/home_screen.dart';
import 'package:expense_tracker_app/views/screens/onboarding/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppPages {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //Onboarding Screens
      case AppRoutes.demoScreen:
        return MaterialPageRoute(builder: (_) => DemoScreen());
      case AppRoutes.budgetScreen:
        return MaterialPageRoute(builder: (_) => CreateBudgetScreen());
      case AppRoutes.welcomeScreen:
        return MaterialPageRoute(builder: (_) => WelcomeScreen());

      //Home Screens
      case AppRoutes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case AppRoutes.editHome:
        return MaterialPageRoute(builder: (_) => EditHome());

      //More Screens
      case AppRoutes.moreScreen:
        return MaterialPageRoute(builder: (_) => MoreScreen());

      //Error Screen
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
