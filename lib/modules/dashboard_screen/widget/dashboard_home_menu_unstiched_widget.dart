import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerece_assignment_project/constants/image_constants.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/controller/dashboard_home_menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:ecommerece_assignment_project/utils/custom_extensions.dart';

class DashboardHomeMenuUnstitchedWidget extends StatelessWidget {
  final DashboardHomeMenuController dashboardHomeMenuController;
  const DashboardHomeMenuUnstitchedWidget({
    Key? key,
    required this.dashboardHomeMenuController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320.0,
      child: CarouselSlider.builder(
        itemCount: dashboardHomeMenuController
            .dashboardHomeMenuMiddleModel!.unstitched!.length,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
          return Stack(
            children: [
              SizedBox(
                height: 320.0,
                width: double.infinity,
                child: CachedNetworkImage(
                  imageUrl: dashboardHomeMenuController
                      .dashboardHomeMenuMiddleModel!
                      .unstitched![itemIndex]
                      .image!,
                  fit: BoxFit.cover,
                  errorWidget: (context, url, error) =>
                      Image.asset(CommonImageConstants.IMAGE_ERROR),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 12.0),
                  width: double.infinity,
                  color: Colors.black.withOpacity(0.6),
                  alignment: Alignment.center,
                  child: Text(
                    dashboardHomeMenuController.dashboardHomeMenuMiddleModel!
                        .unstitched![itemIndex].name!
                        .getFormatedString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
        options: CarouselOptions(
          height: 400,
          aspectRatio: 18 / 9,
          viewportFraction: 0.60,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
