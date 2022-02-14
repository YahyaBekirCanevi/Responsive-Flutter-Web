import 'package:flutter/material.dart';
import 'package:web_demo/helpers/responsiveness.dart';
import 'package:web_demo/widgets/large_screen.dart';
import 'package:web_demo/widgets/side_menu.dart';
import 'package:web_demo/widgets/small_screen.dart';
import 'package:web_demo/widgets/top_navbar.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, _scaffoldKey),
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
