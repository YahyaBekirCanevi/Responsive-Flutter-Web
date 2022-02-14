import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_demo/constants/controllers.dart';
import 'package:web_demo/helpers/responsiveness.dart';
import 'package:web_demo/widgets/custom_text.dart';

class DriversPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                  child: CustomText(
                    text: menuController.activeItem.value,
                    size: 24,
                    weight: FontWeight.bold,
                  ),
                )
              ],
            ))
      ],
    );
  }
}