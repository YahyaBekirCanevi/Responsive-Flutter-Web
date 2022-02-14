import 'package:flutter/cupertino.dart';
import 'package:web_demo/constants/controllers.dart';
import 'package:web_demo/routing/router.dart';
import 'package:web_demo/routing/routes.dart';

Navigator localNavigator() => Navigator(
    key: navigatorController.navigationKey,
    initialRoute: overViewPageRoute,
    onGenerateRoute: generateRoute,
);
