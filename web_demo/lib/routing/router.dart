import 'package:flutter/material.dart';
import 'package:web_demo/pages/clients/clients.dart';
import 'package:web_demo/pages/drivers/drivers.dart';
import 'package:web_demo/pages/overview/overview.dart';
import 'package:web_demo/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overViewPageRoute:
      return _getPageRoute(OverViewPage());
    case driversPageRoute:
      return _getPageRoute(DriversPage());
    case clientsPageRoute:
      return _getPageRoute(ClientsPage());
    default:
      return _getPageRoute(OverViewPage());
  }
}

PageRoute _getPageRoute(Widget child) =>
    MaterialPageRoute(builder: (context) => child);
