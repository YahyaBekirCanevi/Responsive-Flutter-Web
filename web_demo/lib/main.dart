import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_demo/constants/style.dart';
import 'package:web_demo/controllers/menu_controller.dart';
import 'package:web_demo/controllers/navigation_controller.dart';
import 'package:web_demo/pages/404/error_page.dart';
import 'package:web_demo/pages/authentication/authentication.dart';
import 'package:web_demo/routing/routes.dart';
import 'package:web_demo/site_layout.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigatorController());
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: authenticationPageRoute,
      unknownRoute: GetPage(
        name: '/not-found',
        page: () => PageNotFound(),
      ),
      getPages: [
        GetPage(
          name: rootRoute,
          page: () => SiteLayout(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: const Duration(milliseconds: 400),
        ),
        GetPage(
          name: authenticationPageRoute,
          page: () => AuthenticationPage(),
          transition: Transition.rightToLeftWithFade,
          transitionDuration: const Duration(milliseconds: 400),
        ),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Web Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: light,
        textTheme: GoogleFonts.muliTextTheme(Theme.of(context).textTheme).apply(
          bodyColor: Colors.black,
        ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
          },
        ),
      ),
    );
  }
}
