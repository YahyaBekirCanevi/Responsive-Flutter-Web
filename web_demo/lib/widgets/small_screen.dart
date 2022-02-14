import 'package:flutter/material.dart';
import 'package:web_demo/helpers/local_navigator.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      child: localNavigator(),
    );
  }
}