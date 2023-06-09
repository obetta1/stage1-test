
import 'package:flutter/material.dart';

import '../presentaion/presentation.dart';

/// sigleton principle is applied as it is practiced on native Android and IOS
///by implementing a single instance of  the Myapp class.

class MyApp extends StatefulWidget {
  const MyApp._internal(); // private named constructor

  static const MyApp instance =  MyApp._internal(); //singleton--- single instance

  factory MyApp() => instance; // this help to create the same instance of the class each time it is accessed
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute ,
      theme: getApplicationTheme(),
    );
  }
}
