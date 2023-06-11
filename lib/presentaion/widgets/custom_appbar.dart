import 'package:bankly_app/presentaion/presentation.dart';
import 'package:bankly_app/presentaion/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/asset_manager.dart';
import '../resources/string_manager.dart';
import '../resources/value-manager.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.routeName,
    
  }) : super(key: key);

  final String routeName;

  @override
  Widget build(BuildContext context) {

    return AppBar(
        elevation: 0,
        leadingWidth:50 ,
        leading: InkWell(
          onTap: ()=>{
            if(routeName != Routes.homePageRoute){
              Navigator.of(context).pop()
            }

          },
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0 ,top: 5 , bottom: 5),
            child: Container(
              width: 37,
              height: 37,
              decoration: BoxDecoration(
                boxShadow : [BoxShadow(
                    color: ColorManager.lightblue,
                    offset: const Offset(0,4),
                    blurRadius: AppPaddingValue.p15
                )],
                color : ColorManager.lightblue,
                borderRadius : const BorderRadius.all(Radius.elliptical(57, 57)),
              ),
              child: Padding(
                padding:  EdgeInsets.all(AppPaddingValue.p8),
                child: SvgPicture.asset(
                  AssetsImages.backArrow,
                ),
              ),
            ),
          ),
        ),
        title:const Text(StringValue.appbarTitle),
        iconTheme: const IconThemeData(color: Colors.black),
    );
  }

  @override
  // this is the size of the appbar
  Size get preferredSize => const Size.fromHeight(40.0);
}

