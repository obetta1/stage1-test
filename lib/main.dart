import 'package:flutter/material.dart';

import 'app/di.dart';

void main() async{
  await initAppModule();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Container(
        color: Colors.white,
        child: Center(
          child: Text("Wellcome", style:TextStyle(
            fontSize: 34
          ) ,),
        ),
      ),
    );
  }
}

