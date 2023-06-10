import 'dart:async';

import 'package:bankly_app/app/di.dart';
import 'package:bankly_app/data/data_source/remote_data.dart';
import 'package:bankly_app/data/repository/repository_imp.dart';
import 'package:bankly_app/domain/usecase/home_usecase.dart';
import 'package:bankly_app/presentaion/presentation.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {


   // Timer(Duration(seconds: 2), ()=>Navigator.pushReplacementNamed(context, Routes.homePageRoute));
    return Container(
      color: ColorManager.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: ()=> {
            initHomeModule(),
            Navigator
          .pushReplacementNamed(context, Routes.homePageRoute)}, child: Text('Go to next'))
        ],
      ),
    ) ;
  }


}
