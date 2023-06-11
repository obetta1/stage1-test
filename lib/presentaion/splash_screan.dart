import 'dart:async';

import 'package:bankly_app/app/di.dart';
import 'package:bankly_app/data/data_source/remote_data.dart';
import 'package:bankly_app/data/repository/repository_imp.dart';
import 'package:bankly_app/domain/usecase/home_usecase.dart';
import 'package:bankly_app/presentaion/presentation.dart';
import 'package:bankly_app/presentaion/resources/asset_manager.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
 
  Timer? _timer;

  ///Start a delay of 2 seconds
  _startDley(){
    _timer = Timer(Duration(seconds: 4), _goToHome);
  }
  ///navigate to home screen
  _goToHome(){
    Navigator.pushReplacementNamed(context, Routes.homePageRoute);
  }
  
  @override
  void initState() {
    super.initState();
    _startDley();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.secondary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Welcome', style: boldTextStyle(color: Colors.deepPurpleAccent, fontSize: AppSizeValue.s25),)
        ],
      ),
    ) ;
  }
}
