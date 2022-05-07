import 'package:ecommerece_assignment_project/constants/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:ecommerece_assignment_project/utils/custom_extensions.dart';

class DashboardSaleMenuWidget extends StatelessWidget {
  const DashboardSaleMenuWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          CommonImageConstants.SALE_ICON,
          height: 80.0,
        ),
        const SizedBox(
          height: 16.0,
        ),
        Align(
          alignment: Alignment.center,
          child: Text("Sale".getFormatedString(),style: const TextStyle(
            fontSize: 24.0,
            fontFamily: "Roboto",
            fontWeight: FontWeight.bold,
          ),),
        ),
      ],
    ).getPaddingWidget();
  }
}