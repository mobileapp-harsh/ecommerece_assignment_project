import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/controller/dashboard_home_menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:ecommerece_assignment_project/utils/custom_extensions.dart';
import 'package:get/get.dart';

class DashboardHomeMenuBoutiqueCollection extends StatelessWidget {
  final DashboardHomeMenuController dashboardHomeMenuController;
  late RxInt crousalSliderPageIndex = 0.obs;
  DashboardHomeMenuBoutiqueCollection({
    Key? key,
    required this.dashboardHomeMenuController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        CarouselSlider.builder(
          itemCount: dashboardHomeMenuController
                  .dashboardHomeMenuTopModel!.offerCodeBanner!.length -
              1,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) => Stack(
            children: [
              SizedBox(
                height: 320.0,
                child: Image.network(
                  dashboardHomeMenuController.dashboardHomeMenuMiddleModel!
                      .boutiqueCollection![itemIndex].bannerImage!,
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20.0),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.75),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "HANDPICKED \nFOR FASHION DESIGNERS"
                              .getFormatedString(),
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          "+EXPLORE".getFormatedString(),
                          style: const TextStyle(
                            fontSize: 12.0,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          options: CarouselOptions(
            onPageChanged: (int pageIndex, changePage) {
              crousalSliderPageIndex.value = pageIndex;
            },
            height: 320,
            aspectRatio: 18 / 9,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            // onPageChanged: callbackFunction,
            scrollDirection: Axis.horizontal,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: dashboardHomeMenuController
              .dashboardHomeMenuTopModel!.offerCodeBanner!
              .map(
            (element) {
              //these two lines
              int index = dashboardHomeMenuController
                  .dashboardHomeMenuTopModel!.offerCodeBanner!
                  .indexOf(element); //are changed
              return Obx(() => Container(
                    width: 10.0,
                    height: 10.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: crousalSliderPageIndex.value == index
                          ? const Color.fromRGBO(0, 0, 0, 0.9)
                          : const Color.fromRGBO(0, 0, 0, 0.4),
                    ),
                  ));
            },
          ).toList(),
        ),
      ],
    );
  }
}
