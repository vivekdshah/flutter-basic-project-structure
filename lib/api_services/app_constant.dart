import 'package:flutter/material.dart';

class ApiConstant {
  static const String baseUrl = "" ;
}

class AppConstants {
  static String appName = "";
}

abstract class ImageAssets {
  ImageAssets._();

  static const String basePath = "assets/";
}

abstract class AppColors {
  static const Color primaryColor = Color(0xff111827);
  static const Color secondaryColor = Color(0xff4f46e5);
  static const Color bgColor = Color(0xfff1f5f9);
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color greenColor = Colors.green;
  static const Color red = Colors.red;
  static const Color transparent = Colors.transparent;
  static const Color greyColor = Colors.grey;
}

class FontFamily {}

abstract class SharedPrefrenceData {
  SharedPrefrenceData._();
}
