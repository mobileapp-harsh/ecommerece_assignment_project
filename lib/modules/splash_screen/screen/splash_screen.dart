import 'package:ecommerece_assignment_project/config/routes/app_routes.dart';
import 'package:ecommerece_assignment_project/constants/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => {
        Get.offAndToNamed(
          AppRoutes.DashboardScreen,
        ),
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Align(
          alignment: Alignment.center,
          child: Image.asset(
            CommonImageConstants.SPLASH_ICON,
            height: 175.0,
          ),
        ),
      ),
    );
  }
}
