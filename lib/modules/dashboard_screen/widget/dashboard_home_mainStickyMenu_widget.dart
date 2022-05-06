import 'package:ecommerece_assignment_project/modules/dashboard_screen/controller/dashboard_home_menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:ecommerece_assignment_project/utils/custom_extensions.dart';

class MainstickyMenuWidget extends StatelessWidget {
  final DashboardHomeMenuController dashboardHomeMenuController;
  const MainstickyMenuWidget(
      {Key? key, required this.dashboardHomeMenuController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: dashboardHomeMenuController
          .dashboardHomeMenuTopModel!.mainStickyMenu!.length,
      itemBuilder: (context, index) {
        return Container(
          height: 80.0,
          width: 120.0,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(color: Colors.grey),
            ],
            borderRadius: BorderRadius.circular(4.0),
          ),
          margin: const EdgeInsets.only(right: 8.0),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(4.0),
                    topRight: Radius.circular(4.0),
                  ),
                  child: Image.network(
                    dashboardHomeMenuController.dashboardHomeMenuTopModel!
                        .mainStickyMenu![index].image!,
                    height: 65.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 20.0,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(4.0),
                      bottomRight: Radius.circular(4.0),
                    ),
                    color: Colors.white,
                  ),
                  child: Text(
                    dashboardHomeMenuController.dashboardHomeMenuTopModel!
                        .mainStickyMenu![index].title!
                        .getFormatedString(),
                    style: const TextStyle(
                      fontSize: 10.0,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
