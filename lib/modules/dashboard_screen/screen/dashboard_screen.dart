import 'package:ecommerece_assignment_project/constants/font_constatns.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/controller/dashboard_category_menu_controller.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/controller/dashboard_home_menu_controller.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/widget/dashboard_category_menu_widget.dart';
import 'package:ecommerece_assignment_project/modules/dashboard_screen/widget/dashboard_home_menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerece_assignment_project/utils/custom_extensions.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late RxInt bottomBarItemCurrentIndex = 0.obs;

  late List<Widget> dashboardMenu = <Widget>[
    const DashboardHomeMenuWidget(),
    const DashboardCategoryMenuWidget(),
    const Text('3'),
    const Text('4'),
    const Text('5')
  ];

  @override
  void initState() {
    // controller Put
    Get.put(DashboardCategoryMenuController(), permanent: true)
        .getAllCategoryProductApiCall(); // category Api
    Get.put(DashboardHomeMenuController(), permanent: true)
        .getAllDashboardMenuTopApiCall(); // Dashboard Top
    Get.put(DashboardHomeMenuController(), permanent: true)
        .getAllDashboardMenuMiddleApiCall(); // Dashboard Middle
    Get.put(DashboardHomeMenuController(), permanent: true)
        .getAllDashboardMenuBottomApiCall(); // Dashboard Bottom
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Text(
            "curate".getFormatedString(),
            style: const TextStyle(
              color: Colors.blueGrey,
              fontSize: CommonSizeConstants.FONT_SIZE_24,
              fontFamily: "Roboto",
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 24.0,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_bag,
                size: 24.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        body: Center(
          child: Obx(
              () => dashboardMenu.elementAt(bottomBarItemCurrentIndex.value)),
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.grey.withOpacity(.60),
            selectedFontSize: 14,
            unselectedFontSize: 14,
            currentIndex: bottomBarItemCurrentIndex.value,
            onTap: (int index) {
              bottomBarItemCurrentIndex.value = index;
            },
            items: [
              BottomNavigationBarItem(
                label: "HOME".getFormatedString(),
                icon: const Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: "CATEGORY".getFormatedString(),
                icon: const Icon(Icons.category),
              ),
              BottomNavigationBarItem(
                label: "CURATE".getFormatedString(),
                icon: const Icon(Icons.share),
              ),
              BottomNavigationBarItem(
                label: "SALE".getFormatedString(),
                icon: const Icon(Icons.sailing),
              ),
              BottomNavigationBarItem(
                label: "MORE".getFormatedString(),
                icon: const Icon(Icons.more),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomNavigationBarItems(
      {required IconData icon, required String lableName}) {
    return Column(
      children: [
        Icon(
          icon,
          size: 20.0,
        ),
        const SizedBox(
          height: 4.0,
        ),
        Text(
          lableName,
          style: const TextStyle(
            fontFamily: "Roboto",
            fontSize: 10.0,
          ),
        )
      ],
    );
  }
}
