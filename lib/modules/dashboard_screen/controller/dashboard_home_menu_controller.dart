import 'package:ecommerece_assignment_project/api/api_implementer.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/models/dashbord_tabmenu_bottom_model.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/models/dashbord_tabmenu_middle_model.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/models/dashbord_tabmenu_top_model.dart';
import 'package:get/get.dart';

class DashboardHomeMenuController extends GetxController {
  late RxBool isLoading = true.obs;
  late RxBool hasError = false.obs;
  late RxBool hasData = false.obs;
  late RxBool isMiddleLoading = true.obs;
  late RxBool hasMiddleError = false.obs;
  late RxBool hasMiddleData = false.obs;
  late RxBool isBottomLoading = true.obs;
  late RxBool hasBottomError = false.obs;
  late RxBool hasBottomData = false.obs;
  late DashboardHomeMenuTopModel? dashboardHomeMenuTopModel;
  late DashboardHomeMenuMiddleModel? dashboardHomeMenuMiddleModel;
  late DashboardHomeMenuBottomModel? dashboardHomeMenuBottomModel;

  // Dashboard Menu Top APi Call
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

  // Dashboard Menu Middle APi Call
  void getAllDashboardMenuMiddleApiCall() async {
    try {
      isMiddleLoading.value = true;
      hasMiddleError.value = false;
      hasMiddleData.value = false;

      dashboardHomeMenuMiddleModel =
          await ApiImplementer.getDashboardHomeMenuTabMiddleApiImplementer();

      if (dashboardHomeMenuMiddleModel == null) {
        isMiddleLoading.value = false;
        hasMiddleError.value = true;
        hasMiddleData.value = false;
        return;
      }
      isMiddleLoading.value = false;
      hasMiddleError.value = false;
      hasMiddleData.value = true;
      // getAllDashboardMenuBottomApiCall();
    } catch (error) {
      isMiddleLoading.value = false;
      hasMiddleError.value = true;
      hasMiddleData.value = false;
    }
  }

  // Dashboard Menu Bottom APi Call
  void getAllDashboardMenuBottomApiCall() async {
    try {
      isBottomLoading.value = true;
      hasBottomError.value = false;
      hasBottomData.value = false;

      dashboardHomeMenuBottomModel =
          await ApiImplementer.getDashboardHomeMenuTabBottomApiImplementer();

      if (dashboardHomeMenuBottomModel == null) {
        isBottomLoading.value = false;
        hasBottomError.value = true;
        hasBottomData.value = false;
        return;
      }
      isBottomLoading.value = false;
      hasBottomError.value = false;
      hasBottomData.value = true;
    } catch (error) {
      isBottomLoading.value = false;
      hasBottomError.value = true;
      hasBottomData.value = false;
    }
  }
}
