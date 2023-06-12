
import 'package:bankly_app/app/di.dart';
import 'package:bankly_app/domain/model.dart';
import 'package:flutter/material.dart';
import '../presentation.dart';

class Routes {
  static const String splashRoute = "/";
  static const String homePageRoute = "/homepage";
  static const String detailRoute = "/details";
}

class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings routeSettings){
   return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        switch(routeSettings.name) {
          case Routes.splashRoute:
            return  SplashScreen();
          case Routes.homePageRoute:
            initHomeModule();
            return HomeScreen();
          case Routes.detailRoute:
            return DetailsScreen(transactions: routeSettings.arguments as TransactionModel,);
          default:
            return UnDefinedRoute();
        }
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.slowMiddle;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}


class UnDefinedRoute extends StatelessWidget {
  const UnDefinedRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('UnDefinedRoute'),
      ),
    );
  }
}