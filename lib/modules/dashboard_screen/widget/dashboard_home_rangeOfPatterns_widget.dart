import 'package:ecommerece_assignment_project/modules/dashboard_screen/controller/dashboard_home_menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:ecommerece_assignment_project/utils/custom_extensions.dart';

class DashboardHomeMenuRangeOfPatterns extends StatelessWidget {
  final DashboardHomeMenuController dashboardHomeMenuController;
  const DashboardHomeMenuRangeOfPatterns({
    Key? key,
    required this.dashboardHomeMenuController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      height: 332.0,
      width: double.infinity,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dashboardHomeMenuController
            .dashboardHomeMenuBottomModel!.rangeOfPattern!.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250,
            childAspectRatio: 3 / 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          return SizedBox(
            height: 150.0,
            width: 150.0,
            child: Stack(
              children: [
                SizedBox(
                  height: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.network(
                      dashboardHomeMenuController.dashboardHomeMenuBottomModel!
                          .rangeOfPattern![index].image!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 2.0,
                      ),
                      child: Text(
                        dashboardHomeMenuController
                            .dashboardHomeMenuBottomModel!
                            .rangeOfPattern![index]
                            .name!
                            .getFormatedString(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 10.0,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w600,
                        ),
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
