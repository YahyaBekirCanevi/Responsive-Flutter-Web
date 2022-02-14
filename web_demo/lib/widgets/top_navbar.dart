import 'package:flutter/material.dart';
import 'package:web_demo/constants/style.dart';
import 'package:web_demo/helpers/responsiveness.dart';
import 'package:web_demo/widgets/custom_text.dart';

AppBar topNavigationBar(context, key) => AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Container(
              padding: const EdgeInsets.only(left: 14),
              child: Icon(
                Icons.home_outlined,
                color: dark,
                size: 24,
              ),
            )
          : IconButton(
              icon: Icon(
                Icons.menu,
                color: dark,
                size: 24,
              ),
              onPressed: () {
                key.currentState!.openDrawer();
              },
            ),
      elevation: 0,
      title: Row(
        children: [
          Visibility(
            visible: !ResponsiveWidget.isSmallScreen(context),
            child: CustomText(
              text: "Web Demo",
              color: dark,
              size: 20,
              weight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Container(),
          ),
          IconButton(
            icon: Icon(
              Icons.settings,
              color: dark.withOpacity(.7),
            ),
            onPressed: () {},
          ),
          Stack(
            children: [
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: dark.withOpacity(.7),
                ),
                onPressed: () {},
              ),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: 12,
                  height: 12,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: active,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: light,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: lightGrey,
          ),
          const SizedBox(width: 24),
          Visibility(
            visible: !ResponsiveWidget.isSmallScreen(context),
            child: Row(
              children: [
                CustomText(
                  text: "Yahya Bekir Canevi",
                  color: lightGrey,
                ),
                const SizedBox(width: 16),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.all(2),
              child: CircleAvatar(
                backgroundColor: light,
                child: Icon(
                  Icons.person_outline,
                  color: dark,
                ),
              ),
            ),
          ),
        ],
      ),
      iconTheme: IconThemeData(color: dark),
      backgroundColor: Colors.transparent,
    );
