import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerece_assignment_project/constants/image_constants.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/controller/dashboard_home_menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:ecommerece_assignment_project/utils/custom_extensions.dart';

class DashboardHomeMenuDesignAsPerOccasion extends StatelessWidget {
  final DashboardHomeMenuController dashboardHomeMenuController;
  const DashboardHomeMenuDesignAsPerOccasion(
      {Key? key, required this.dashboardHomeMenuController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      height: 432.0,
      width: double.infinity,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dashboardHomeMenuController
            .dashboardHomeMenuMiddleModel!.category!.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250,
            childAspectRatio: 3 / 2.4,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          return SizedBox(
            height: 160.0,
            width: 160.0,
            child: Stack(
              children: [
                SizedBox(
                  height: 200,
                  child: 
                  CachedNetworkImage(
                      imageUrl: dashboardHomeMenuController.dashboardHomeMenuBottomModel!
                        .designOccasion![index].image!,
                      fit: BoxFit.cover,
                      errorWidget: (context, url, error) =>
                          Image.asset(CommonImageConstants.IMAGE_ERROR),
                    ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: double.infinity,
                      height: 60.0,
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            dashboardHomeMenuController
                                .dashboardHomeMenuMiddleModel!
                                .category![index]
                                .name!
                                .getFormatedString(),
                            style: const TextStyle(
                              fontSize: 14.0,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                dashboardHomeMenuController
                                    .dashboardHomeMenuBottomModel!
                                    .designOccasion![index]
                                    .subName!,
                                style: const TextStyle(
                                  fontSize: 10.0,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                dashboardHomeMenuController
                                    .dashboardHomeMenuBottomModel!
                                    .designOccasion![index]
                                    .cta!,
                                style: const TextStyle(
                                  fontSize: 10.0,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
