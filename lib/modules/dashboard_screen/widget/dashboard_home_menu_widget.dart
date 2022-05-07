import 'package:ecommerece_assignment_project/constants/image_constants.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/controller/dashboard_home_menu_controller.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/widget/dashboard_home_asPerOccassion_widget.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/widget/dashboard_home_mainStickyMenu_widget.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/widget/dashboard_home_menu_boutiqueCollection.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/widget/dashboard_home_menu_shopByCategory_widget.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/widget/dashboard_home_offerBanner_widget.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/widget/dashboard_home_rangeOfPatterns_widget.dart';
import 'package:ecommerece_assignment_project/utils/ui/progress_indicator_spinkit.dart';
import 'package:flutter/material.dart';
import 'package:ecommerece_assignment_project/utils/custom_extensions.dart';
import 'package:get/get.dart';

class DashboardHomeMenuWidget extends StatefulWidget {
  const DashboardHomeMenuWidget({Key? key}) : super(key: key);

  @override
  State<DashboardHomeMenuWidget> createState() =>
      _DashboardHomeMenuWidgetState();
}

class _DashboardHomeMenuWidgetState extends State<DashboardHomeMenuWidget> {
  final DashboardHomeMenuController _dashboardHomeMenuController =
      Get.find<DashboardHomeMenuController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => _dashboardHomeMenuController.isLoading.value == true
          ? const ProgressIndicatorUtils()
          : _dashboardHomeMenuController.hasError.value == true
              ? const Center(
                  child: Text('Something went Wrong,Please try again later!'),
                )
              : _dashboardHomeMenuController.dashboardHomeMenuTopModel == null
                  ? const Center(
                      child:
                          Text('Something went Wrong,Please try again later!'),
                    )
                  : ListView(
                      physics: const BouncingScrollPhysics(),
                      children: [
                        SizedBox(
                          height: 85.0,
                          child: MainstickyMenuWidget(
                            dashboardHomeMenuController:
                                _dashboardHomeMenuController,
                          ).getPaddingWidget(),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          height: 220.0,
                          child: DashboardHomeOfferBannerWidget(
                            dashboardHomeMenuController:
                                _dashboardHomeMenuController,
                          ),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          "Shop By Category".getFormatedString(),
                          style: const TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ).getPaddingWidget(),
                        DashboardHomeMenuShopByCategoryWidget(
                          dashboardHomeMenuController:
                              _dashboardHomeMenuController,
                        ).getPaddingWidget(),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          "Boutique Collection".getFormatedString(),
                          style: const TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ).getPaddingWidget(),
                        const SizedBox(
                          height: 12.0,
                        ),
                        DashboardHomeMenuBoutiqueCollection(
                            dashboardHomeMenuController:
                                _dashboardHomeMenuController),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          "Print Your Own Design".getFormatedString(),
                          style: const TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ).getPaddingWidget(),
                        const SizedBox(
                          height: 12.0,
                        ),
                        SizedBox(
                          height: 200.0,
                          width: double.infinity,
                          child: Image.asset(
                            CommonImageConstants.SPLASH_BG,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: const Text(
                              "+ Upload Your Design",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Roboto",
                                  fontSize: 16.0),
                            ),
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                color: Colors.orange,
                                width: 2.0,
                              ),
                            ),
                          ),
                        ).getPaddingWidget(),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          "Range Of Pattern".getFormatedString(),
                          style: const TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ).getPaddingWidget(),
                        const SizedBox(
                          height: 12.0,
                        ),
                        DashboardHomeMenuRangeOfPatterns(
                                dashboardHomeMenuController:
                                    _dashboardHomeMenuController)
                            .getPaddingWidget(),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          "Design As Per Occasion".getFormatedString(),
                          style: const TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ).getPaddingWidget(),
                        const SizedBox(
                          height: 12.0,
                        ),
                        DashboardHomeMenuDesignAsPerOccasion(
                          dashboardHomeMenuController:
                              _dashboardHomeMenuController,
                        ).getPaddingWidget(),
                      ],
                    ),
    );
  }
}
