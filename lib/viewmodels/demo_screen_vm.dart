import 'package:expense_tracker_app/core/routes/app_routes.dart';
import 'package:expense_tracker_app/core/services/navigation_services.dart';

class DemoScreenVm {
  final NavigationServices navigationServices;
  DemoScreenVm(this.navigationServices);

  void gobudget() {
    navigationServices.navigateTo(AppRoutes.createbudgetScreen);
  }
}
