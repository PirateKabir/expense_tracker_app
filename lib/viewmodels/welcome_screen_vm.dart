import 'package:expense_tracker_app/core/routes/app_routes.dart';
import 'package:expense_tracker_app/core/services/navigation_services.dart';

class WelcomeScreenVm {
  final NavigationServices navigationServices;
  WelcomeScreenVm(this.navigationServices);

  void gonav() {
    navigationServices.navigateTo(AppRoutes.bottomNavbar);
  }

  void goback() {
    navigationServices.goback();
  }
}
