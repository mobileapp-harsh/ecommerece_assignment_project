import 'package:ecommerece_assignment_project/modules/dashboard_screen/controller/dashboard_category_menu_controller.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/widget/category_list_main_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:ecommerece_assignment_project/utils/custom_extensions.dart';
import 'package:get/get.dart';

class DashboardCategoryMenuWidget extends StatefulWidget {
  const DashboardCategoryMenuWidget({Key? key}) : super(key: key);

  @override
  State<DashboardCategoryMenuWidget> createState() =>
      _DashboardCategoryMenuWidgetState();
}

class _DashboardCategoryMenuWidgetState
    extends State<DashboardCategoryMenuWidget> {
  final DashboardCategoryMenuController _dashboardCategoryMenuController =
      Get.find<DashboardCategoryMenuController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => _dashboardCategoryMenuController.isLoading.value == true
          ? const Center(child: CircularProgressIndicator())
          : _dashboardCategoryMenuController.hasError.value == true
              ? const Center(
                  child: Text('Something went Wrong,Please try again later!'),
                )
              : _dashboardCategoryMenuController.categoryListModel == null
                  ? const Center(
                      child:
                          Text('Something went Wrong,Please try again later!'),
                    )
                  : ListView.builder(
                      itemCount: _dashboardCategoryMenuController
                          .categoryListModel!.categories!.length,
                      itemBuilder: (context, index) {
                        return CategoryListMainProduct(
                          dashboardCategoryMenuController:
                              _dashboardCategoryMenuController,
                          index: index,
                        );
                      },
                    ).getPaddingWidget(),
    );
  }
}
