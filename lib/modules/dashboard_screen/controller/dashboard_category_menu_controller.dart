import 'package:ecommerece_assignment_project/api/api_implementer.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/models/category_list_model.dart';
import 'package:get/get.dart';

class DashboardCategoryMenuController extends GetxController {
  late RxBool isLoading = true.obs;
  late RxBool hasError = false.obs;
  late RxBool hasData = false.obs;
  late CategoryListModel? categoryListModel;

  // Get Category List Product Api Call
  void getAllCategoryProductApiCall() async {
    try {
      isLoading.value = true;
      hasError.value = false;
      hasData.value = false;

      categoryListModel =
          await ApiImplementer.getProductCategoryListApiImplementer();

      if (categoryListModel == null) {
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
