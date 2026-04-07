import 'package:expense_tracker_app/core/routes/app_routes.dart';
import 'package:expense_tracker_app/core/services/navigation_services.dart';

class CreateBudgetScreenVm {
  final NavigationServices navigationServices;
  CreateBudgetScreenVm(this.navigationServices);

  void gowelcome() {
    navigationServices.navigateTo(AppRoutes.welcomeScreen);
  }

  void goback() {
    navigationServices.goback();
  }
}
