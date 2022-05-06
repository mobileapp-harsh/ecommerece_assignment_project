import 'package:ecommerece_assignment_project/config/routes/app_routes.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/screen/dashboard_screen.dart';
import 'package:ecommerece_assignment_project/modules/splash_screen/screen/splash_screen.dart';
import 'package:get/get.dart';

// App Screen
class AppScreens {
  static var list = [
    GetPage(
      name: AppRoutes.SplashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: AppRoutes.DashboardScreen,
      page: () => const DashboardScreen(),
    ),
  ];
}
