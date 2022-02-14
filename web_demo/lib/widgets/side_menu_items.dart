import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_demo/constants/controllers.dart';
import 'package:web_demo/constants/style.dart';
import 'package:web_demo/widgets/custom_text.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function()? onTap;
  const SideMenuItem({Key? key, required this.itemName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        menuController.onHover(value ? itemName : "not hovering");
      },
      child: Obx(() => Container(
            color: menuController.isHovering(itemName)
                ? lightGrey.withOpacity(.1)
                : Colors.transparent,
            child: Row(
              children: [
                Visibility(
                  visible: menuController.isHovering(itemName) ||
                      menuController.isActive(itemName),
                  child: Container(
                    width: 6,
                    height: 40,
                    color: dark,
                  ),
                  maintainSize: true,
                  maintainState: true,
                  maintainAnimation: true,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: menuController.returnIconFor(itemName),
                ),
                Flexible(
                  child: CustomText(
                    text: itemName,
                    size: menuController.isActive(itemName) ? 24 : 20,
                    weight: menuController.isActive(itemName)
                        ? FontWeight.normal
                        : FontWeight.bold,
                    color: menuController.isHovering(itemName) ||
                            menuController.isActive(itemName)
                        ? dark
                        : lightGrey,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
