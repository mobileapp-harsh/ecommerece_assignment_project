import 'package:ecommerece_assignment_project/api/dio_client.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/models/category_list_model.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/models/dashbord_tabmenu_bottom_model.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/models/dashbord_tabmenu_middle_model.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/models/dashbord_tabmenu_top_model.dart';
import 'package:ecommerece_assignment_project/utils/custom_http_exception.dart';

class ApiImplementer {
  // get Product Category List Api Implementer
  static Future<CategoryListModel>
      getProductCategoryListApiImplementer() async {
    final response = await DioClient.getDioClient().get('category.json');
    if (response.statusCode == 200) {
      return CategoryListModel.fromJson(response.data);
    } else {
      throw CustomHttpExeption(exceptionMsg: response.statusMessage.toString());
    }
  }

  // get Dashboard Menu Tab Top APi Implementer
  static Future<DashboardHomeMenuTopModel>
      getDashboardHomeMenuTabTopApiImplementer() async {
    final response = await DioClient.getDioClient().get('top.json');
    if (response.statusCode == 200) {
      return DashboardHomeMenuTopModel.fromJson(response.data);
    } else {
      throw CustomHttpExeption(exceptionMsg: response.statusMessage.toString());
    }
  }

  // get Dashboard Menu Tab Middle APi Implementer
  static Future<DashboardHomeMenuMiddleModel>
      getDashboardHomeMenuTabMiddleApiImplementer() async {
    final response = await DioClient.getDioClient().get('middle.json');
    if (response.statusCode == 200) {
      return DashboardHomeMenuMiddleModel.fromJson(response.data);
    } else {
      throw CustomHttpExeption(exceptionMsg: response.statusMessage.toString());
    }
  }

  // get Dashboard Menu Tab Bottom APi Implementer
  static Future<DashboardHomeMenuBottomModel>
      getDashboardHomeMenuTabBottomApiImplementer() async {
    final response = await DioClient.getDioClient().get('bottom.json');
    if (response.statusCode == 200) {
      return DashboardHomeMenuBottomModel.fromJson(response.data);
    } else {
      throw CustomHttpExeption(exceptionMsg: response.statusMessage.toString());
    }
  }
}
