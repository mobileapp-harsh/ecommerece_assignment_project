import 'package:ecommerece_assignment_project/modules/dashboard_screen/controller/dashboard_home_menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:ecommerece_assignment_project/utils/custom_extensions.dart';
class DashboardHomeMenuShopByCategoryWidget extends StatelessWidget {
  final DashboardHomeMenuController dashboardHomeMenuController;
  const DashboardHomeMenuShopByCategoryWidget({
    Key? key,
    required this.dashboardHomeMenuController,
  }) : super(key: key);

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
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return SizedBox(
            height: 200.0,
            width: 110.0,
            child: Stack(
              children: [
                SizedBox(
                  height: 200,
                  child: Image.network(
                    dashboardHomeMenuController
                        .dashboardHomeMenuMiddleModel!.category![index].image!,
                    fit: BoxFit.cover,
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
                      color: HexColor.fromHex(dashboardHomeMenuController.dashboardHomeMenuMiddleModel!.category![index].tintColor!),
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
                          const Text(
                            "EXPLORE",
                            style: TextStyle(
                              fontSize: 10.0,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w600,
                            ),
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
