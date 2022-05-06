import 'package:ecommerece_assignment_project/api/api_implementer.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/models/dashbord_tabmenu_bottom_model.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/models/dashbord_tabmenu_middle_model.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/models/dashbord_tabmenu_top_model.dart';
import 'package:get/get.dart';

class DashboardHomeMenuController extends GetxController {
  late RxBool isLoading = true.obs;
  late RxBool hasError = false.obs;
  late RxBool hasData = false.obs;
  late DashboardHomeMenuTopModel? dashboardHomeMenuTopModel;
  late DashboardHomeMenuMiddleModel? dashboardHomeMenuMiddleModel;
  late DashboardHomeMenuBottomModel? dashboardHomeMenuBottomModel;

  void getAllDashboardMenuTopApiCall() async {
    try {
      isLoading.value = true;
      hasError.value = false;
      hasData.value = false;

      dashboardHomeMenuTopModel =
          await ApiImplementer.getDashboardHomeMenuTabTopApiImplementer();

      if (dashboardHomeMenuTopModel == null) {
        isLoading.value = false;
        hasError.value = true;
        hasData.value = false;
        return;
      }
      isLoading.value = false;
      hasError.value = false;
      hasData.value = true;
      // getAllDashboardMenuTopApiCall();
    } catch (error) {
      isLoading.value = false;
      hasError.value = true;
      hasData.value = false;
    }
  }

  void getAllDashboardMenuMiddleApiCall() async {
    try {
      isLoading.value = true;
      hasError.value = false;
      hasData.value = false;

      dashboardHomeMenuMiddleModel =
          await ApiImplementer.getDashboardHomeMenuTabMiddleApiImplementer();

      if (dashboardHomeMenuMiddleModel == null) {
        isLoading.value = false;
        hasError.value = true;
        hasData.value = false;
        return;
      }
      isLoading.value = false;
      hasError.value = false;
      hasData.value = true;
      // getAllDashboardMenuBottomApiCall();
    } catch (error) {
      isLoading.value = false;
      hasError.value = true;
      hasData.value = false;
    }
  }

  void getAllDashboardMenuBottomApiCall() async {
    try {
      isLoading.value = true;
      hasError.value = false;
      hasData.value = false;

      dashboardHomeMenuBottomModel =
          await ApiImplementer.getDashboardHomeMenuTabBottomApiImplementer();

      if (dashboardHomeMenuBottomModel == null) {
        isLoading.value = false;
        hasError.value = true;
        hasData.value = false;
        return;
      }
      isLoading.value = false;
      hasError.value = false;
      hasData.value = true;
    } catch (error) {
      isLoading.value = false;
      hasError.value = true;
      hasData.value = false;
    }
  }
}
