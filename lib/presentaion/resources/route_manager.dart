
import 'package:bankly_app/app/di.dart';
import 'package:flutter/material.dart';
import '../presentation.dart';

class Routes {
  static const String splashRoute = "/";
  static const String homePageRoute = "/homepage";
  static const String detailRoute = "/details";
}


class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings routeSettings){
  switch(routeSettings.name) {
    case Routes.splashRoute:
      return MaterialPageRoute(builder: (_) => SplashScreen());
    case Routes.homePageRoute:
      initHomeModule();
      return MaterialPageRoute(builder: (_) => HomeScreen());
    case Routes.detailRoute:
      return MaterialPageRoute(builder: (_) => const DetailsScreen());
    default:
      return unDefinedRoute();
  }
  }

  static Route unDefinedRoute() {
  return MaterialPageRoute(builder: (_)=>Scaffold(
  appBar: AppBar(
  title: const Text(StringValue.noRouteFound),
  ),
  body: const Center(
  child: Text(StringValue.noRouteFound),
  ),
  ));
  }
}