import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_demo/constants/style.dart';
import 'package:web_demo/routing/routes.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = overViewPageDisplayName.obs;
  var hoverItem = "".obs;

  changeActiveItem(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  bool isActive(String itemName) => activeItem.value == itemName;
  bool isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName) {
    IconData iconData;
    switch (itemName) {
      case overViewPageDisplayName:
        iconData = Icons.trending_up;
        break;
      case driversPageDisplayName:
        iconData = Icons.drive_eta;
        break;
      case clientsPageDisplayName:
        iconData = Icons.people_alt_outlined;
        break;
      case authenticationPageDisplayName:
        iconData = Icons.exit_to_app;
        break;
      default:
        iconData = Icons.exit_to_app;
        break;
    }
    return _customIcon(iconData, itemName);
  }

  Widget _customIcon(IconData iconData, String itemName) {
    return Icon(iconData,
        size: isActive(itemName) ? 22 : 18,
        color: isActive(itemName) || isHovering(itemName) ? dark : lightGrey);
  }
}
