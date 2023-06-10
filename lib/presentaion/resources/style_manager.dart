
import 'package:flutter/material.dart';

import 'manager.dart';

TextStyle customTextStyle(double fontSize, String fontFamily, FontWeight fontWeight, Color color){
  return TextStyle(fontSize: fontSize, fontFamily: fontFamily, color: color, fontWeight: fontWeight);
}


TextStyle regularTextStyle({double fontSize = FontSize.s12, required Color color}){
  return customTextStyle(fontSize, FontConstant.fontFamily , FontWeightManager.regular, color);
}

TextStyle boldTextStyle({double fontSize = FontSize.s12, required Color color}){
  return customTextStyle(fontSize, FontConstant.fontFamily, FontWeightManager.bold, color);
}
TextStyle semiBoldTextStyle({double fontSize = FontSize.s12, required Color color}){
  return customTextStyle(fontSize, FontConstant.fontFamily, FontWeightManager.semiBold, color);
}

TextStyle lightTextStyle({double fontSize =  FontSize.s12, required Color color}){
  return customTextStyle(fontSize, FontConstant.fontFamily, FontWeightManager.light, color);
}

TextStyle mediumTextStyle({double fontSize = FontSize.s12, required Color color}){
  return customTextStyle(fontSize, FontConstant.fontFamily, FontWeightManager.medium, color);
}