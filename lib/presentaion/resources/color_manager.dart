
import 'package:flutter/material.dart';

class ColorManager{
  static final Color primary = HexColor.fromHex("#296CF0");
  static final Color  darkGrey =  HexColor.fromHex("#828282");
  static final Color lightGray =  HexColor.fromHex("#9FA2AB");//for date text
  static final Color  grey2 =  HexColor.fromHex("#D3D3D3");
  static final Color secondary =  HexColor.fromHex("#F4F7FF");
  static final Color lightblue =  HexColor.fromHex("#E9E9FF");


  // other colors
  static Color darkPrimary = HexColor.fromHex("#191919");
  static Color green = HexColor.fromHex("#3CC13B");
  static Color cardGreen = HexColor.fromHex("#CFE7DD");
  static Color cardRed = HexColor.fromHex("#FFE8EA");
  static Color white = HexColor.fromHex("#FFFFFF");
  static Color error = HexColor.fromHex("#E92022"); // red color
  static Color lightRed = HexColor.fromHex("#FFE8EA"); // red color
  static Color black= HexColor.fromHex("#000000");
}

///this function is used to convert the hex color to Int Color
extension HexColor on Color{
  static Color fromHex(String  hexColorString){
    hexColorString =  hexColorString.replaceAll('#', ''); // this removes the # symbol from the string

    if(hexColorString.length == 6){ ///every color without opacity is always 6 figure and one with opacity has more
      hexColorString = 'FF$hexColorString'; /// so FF is add to make it 8 character with opacity of 100%
    }
    return Color(int.parse(hexColorString, radix: 16)); /// radix:16 implies base-16
  }
}