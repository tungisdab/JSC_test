import 'package:flutter/material.dart';

class AppColor {
  final Color whiteColor;
  final Color blackColor;
  final Color backgroundColor;
  final Color textColor;
  final Color primaryColor;
  final Color secondaryColor;
  final Color accentColor;

  AppColor({
    required this.whiteColor,
    required this.blackColor,
    required this.backgroundColor,
    required this.textColor,
    required this.primaryColor,
    required this.secondaryColor,
    required this.accentColor,
  });

  static final lightColors = AppColor(
    whiteColor: const Color(0xFFFFFFFF),
    blackColor: const Color(0xff000000),
    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
    textColor: const Color.fromARGB(255, 55, 56, 56),
    // primaryColor: const Color.fromARGB(255, 255, 13, 0),
    primaryColor: const Color(0xFFA9A9A9),
    secondaryColor: const Color.fromARGB(255, 255, 13, 0),
    accentColor: const Color(0xFFC0C0C0),
  );

  static final darkColors = AppColor(
    whiteColor: const Color(0xff000000),
    blackColor: const Color(0xffFFFFFF),
    backgroundColor: const Color(0xff000000),
    textColor: const Color.fromARGB(255, 255, 255, 255),
    primaryColor: const Color(0xFFA9A9A9),
    secondaryColor: const Color.fromARGB(255, 255, 13, 0),
    accentColor: const Color(0xFFC0C0C0),
  );
}
