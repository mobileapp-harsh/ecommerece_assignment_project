import 'package:ecommerece_assignment_project/config/routes/app_routes.dart';
import 'package:ecommerece_assignment_project/config/routes/app_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ],
  ).then(
    (_) {
      runApp(const MyApp());
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.SplashScreen,
      getPages: AppScreens.list,
      debugShowCheckedModeBanner: false,
      title: 'E-Commerece Assignment Project',
      themeMode: ThemeMode.light,
    );
  }
}
