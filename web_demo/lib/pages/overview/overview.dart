import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_demo/constants/controllers.dart';
import 'package:web_demo/helpers/responsiveness.dart';
import 'package:web_demo/pages/overview/widgets/overview_cards_large.dart';
import 'package:web_demo/pages/overview/widgets/overview_cards_small.dart';
import 'package:web_demo/widgets/custom_text.dart';

class OverViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: ResponsiveWidget.isSmallScreen(context) ? 60 : 10,
                    left: ResponsiveWidget.isSmallScreen(context) ? 60 : 10,
                  ),
                  child: CustomText(
                    text: menuController.activeItem.value,
                    size: 24,
                    weight: FontWeight.bold,
                  ),
                )
              ],
            )),
        Expanded(
          child: ListView(
            children: [
              ResponsiveWidget.isSmallScreen(context)
                  ? const OverviewCardsSmallScreen()
                  : const OverviewCardsLargeScreen(),
            ],
          ),
        ),
      ],
    );
  }
}
