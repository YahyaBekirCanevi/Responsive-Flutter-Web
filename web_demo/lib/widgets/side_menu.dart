import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_demo/constants/controllers.dart';
import 'package:web_demo/constants/style.dart';
import 'package:web_demo/helpers/responsiveness.dart';
import 'package:web_demo/routing/routes.dart';
import 'package:web_demo/widgets/custom_text.dart';
import 'package:web_demo/widgets/side_menu_items.dart';

const double sideMenuWidth = 270;

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: light,
      width: sideMenuWidth,
      child: ListView(
        children: [
          Visibility(
            visible: ResponsiveWidget.isSmallScreen(context),
            child: Container(
              color: activeDark,
              height: 120,
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 50.0),
                child: CustomText(
                  text: "Web Demo",
                  color: light,
                  size: 30,
                  weight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map((item) => SideMenuItem(
                      itemName: item.name,
                      onTap: () {
                        if (item.route == authenticationPageRoute) {
                          menuController
                              .changeActiveItem(overViewPageDisplayName);
                          Get.offAllNamed(authenticationPageRoute);
                          return;
                        }
                        if (!menuController.isActive(item.name)) {
                          menuController.changeActiveItem(item.name);
                          if (ResponsiveWidget.isSmallScreen(context)) {
                            Get.back();
                          }
                          navigatorController.navigateTo(item.route);
                        }
                      },
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
