import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/controller/dashboard_home_menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:ecommerece_assignment_project/utils/custom_extensions.dart';

class DashboardHomeOfferBannerWidget extends StatelessWidget {
  final DashboardHomeMenuController dashboardHomeMenuController;
  const DashboardHomeOfferBannerWidget({
    Key? key,
    required this.dashboardHomeMenuController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: dashboardHomeMenuController
          .dashboardHomeMenuTopModel!.offerCodeBanner!.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6.0),
            child: Image.network(
              dashboardHomeMenuController.dashboardHomeMenuTopModel!
                  .offerCodeBanner![itemIndex].bannerImage!,
              fit: BoxFit.cover,
              height: 190.0,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(horizontal: 32.0),
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 12.0),
                child: Text(
                  "Not ${dashboardHomeMenuController.dashboardHomeMenuTopModel!.offerCodeBanner![itemIndex].type} COMES AT A HEAVY PRICE"
                      .getFormatedString(),
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      options: CarouselOptions(
        height: 400,
        aspectRatio: 18 / 9,
        viewportFraction: 0.84,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        // onPageChanged: callbackFunction,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
