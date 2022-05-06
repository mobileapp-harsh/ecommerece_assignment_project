import 'package:ecommerece_assignment_project/constants/image_constants.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/controller/dashboard_category_menu_controller.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/widget/category_list_child_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:ecommerece_assignment_project/utils/custom_extensions.dart';
import 'package:get/get.dart';

class CategoryListMainProduct extends StatelessWidget {
  final DashboardCategoryMenuController dashboardCategoryMenuController;
  final int index;
  late RxBool isExpanded = false.obs;
  CategoryListMainProduct(
      {Key? key,
      required this.dashboardCategoryMenuController,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: () {
            isExpanded.value = !isExpanded.value;
          },
          child: Container(
            height: 120.0,
            margin: const EdgeInsets.only(bottom: 8.0),
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image.network(
                    dashboardCategoryMenuController
                        .categoryListModel!.bannerImage!,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          dashboardCategoryMenuController.categoryListModel!
                              .categories![index].categoryName!
                              .getFormatedString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: "Roboto",
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Obx(
                          () => Image.asset(
                            isExpanded.value == true
                                ? CommonImageConstants.DOWN_ARROW
                                : CommonImageConstants.RIGHT_ARROW,
                            height: 24.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        ...dashboardCategoryMenuController
            .categoryListModel!.categories![index].child!
            .map(
          (element) {
            return Obx(
              () => isExpanded.value == true
                  ? CategoryListChildWidget(
                      categoryListModel: element,
                      dashboardCategoryMenuController:
                          dashboardCategoryMenuController,
                    )
                  : const SizedBox(),
            );
          },
        ).toList(),
      ],
    );
  }
}
