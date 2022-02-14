import 'package:flutter/material.dart';
import 'package:web_demo/helpers/local_navigator.dart';
import 'package:web_demo/widgets/side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SideMenu(),
        Container(
          width: MediaQuery.of(context).size.width - sideMenuWidth,
          child: localNavigator(),
        ),
      ],
    );
  }
}
