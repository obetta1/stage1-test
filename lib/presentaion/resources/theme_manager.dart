import 'package:flutter/material.dart';

import 'manager.dart';

ThemeData getApplicationTheme(){
  return ThemeData(
    //main app color
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.lightblue,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.lightGray,
      //ripple color
      splashColor: ColorManager.lightblue,
      // will be used incase of disabled button for example
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: ColorManager.secondary),
      //button theme
      buttonTheme: ButtonThemeData(
          shape: const StadiumBorder(),
          buttonColor: ColorManager.primary,
          disabledColor: ColorManager.lightGray,
          splashColor: ColorManager.lightblue
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: ColorManager.primary,
              textStyle: regularTextStyle(color: ColorManager.white),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSizeValue.s12)
              )
          )
      ),




      //appbar theme
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: ColorManager.white,
          shadowColor: ColorManager.lightGray,
          elevation: AppSizeValue.s0,
          titleTextStyle: boldTextStyle(color: ColorManager.black, fontSize: FontSize.s20,)
      ),
      //appBarTheme:

      // card view theme
      cardTheme: CardTheme(
          elevation: AppSizeValue.s4,
          color: ColorManager.white,
          shadowColor: ColorManager.lightGray
      ),

      // text theme
      textTheme: TextTheme(
          headlineLarge: semiBoldTextStyle(
              color: ColorManager.darkGrey, fontSize: FontSize.s16),
          titleLarge: regularTextStyle(
              color: ColorManager.white, fontSize: FontSize.s16),
          displayLarge: boldTextStyle(
              color: ColorManager.primary, fontSize: FontSize.s16),
          displayMedium: regularTextStyle(
              color: ColorManager.primary, fontSize: FontSize.s14),
          titleMedium: mediumTextStyle(
              color: ColorManager.lightGray, fontSize: FontSize.s14),
          headlineMedium: mediumTextStyle(
              color: ColorManager.primary, fontSize: FontSize.s14),
          bodyMedium: mediumTextStyle(color: ColorManager.lightGray),
          bodyLarge: regularTextStyle(color: ColorManager.darkPrimary),
          bodySmall: regularTextStyle(color: ColorManager.darkGrey)
      ),



  );

}