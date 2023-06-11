import 'package:bankly_app/presentaion/presentation.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showSnackbar(String title, String message) {
  Get.snackbar(title, message,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 5),
      backgroundColor: ColorManager.primary,
      colorText: Colors.white);
}

String timeFormat(String timeString){
  // Convert the time string to DateTime
  DateTime dateTime = DateTime.parse(timeString);
  return DateFormat('d, MMM yyyy, hh:mm:ss a').format(dateTime);
}