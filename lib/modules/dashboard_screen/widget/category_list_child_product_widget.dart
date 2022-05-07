import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerece_assignment_project/constants/image_constants.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/controller/dashboard_category_menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:ecommerece_assignment_project/utils/custom_extensions.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/models/category_list_model.dart';

class CategoryListChildWidget extends StatelessWidget {
  final Child categoryListModel;
  final DashboardCategoryMenuController dashboardCategoryMenuController;
  const CategoryListChildWidget({
    Key? key,
    required this.categoryListModel,
    required this.dashboardCategoryMenuController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      margin: const EdgeInsets.only(bottom: 4.0),
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: CachedNetworkImage(
              imageUrl: dashboardCategoryMenuController
                  .categoryListModel!.bannerImage!,
                  fit: BoxFit.cover,
                  errorWidget: (context, url, error) => Image.asset(CommonImageConstants.IMAGE_ERROR),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  categoryListModel.categoryName!.getFormatedString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: "Roboto",
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
