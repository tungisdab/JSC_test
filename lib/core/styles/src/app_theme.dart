import 'package:flutter/material.dart';
import 'package:jsc_test/core/styles/src/app_font.dart';
import 'package:jsc_test/core/styles/styles.dart';

class AppTheme {
  final AppColor chosenColor;

  AppTheme(this.chosenColor);

  ThemeData getTheme() {
    final size = AppSize();
    return ThemeData(
      fontFamily: fontFamily,
      colorScheme: ColorScheme.fromSeed(
        surface: chosenColor.backgroundColor,
        seedColor: chosenColor.primaryColor,
        primary: chosenColor.primaryColor,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: chosenColor.primaryColor,
        foregroundColor: chosenColor.backgroundColor,
        titleTextStyle: TextStyle(
          fontFamily: fontFamily,
          fontSize: size.appBarText,
          color: chosenColor.whiteColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      textTheme: TextTheme(
        bodyMedium: TextStyle(
          color: chosenColor.textColor,
          fontSize: size.normalText,
          fontFamily: fontFamily,
        ),
        headlineLarge: TextStyle(
          color: chosenColor.textColor,
          fontSize: size.largeText,
          fontFamily: fontFamily,
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              WidgetStateProperty.all<Color>(chosenColor.primaryColor),
          foregroundColor:
              WidgetStateProperty.all<Color>(chosenColor.whiteColor),
          textStyle: WidgetStateProperty.all<TextStyle>(
            TextStyle(
              fontSize: size.smallText,
              fontFamily: fontFamily,
            ),
          ),
        ),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.all<Color>(chosenColor.primaryColor),
        overlayColor:
            WidgetStateProperty.all<Color>(chosenColor.backgroundColor),
        trackColor: WidgetStateProperty.all<Color>(chosenColor.backgroundColor),
        trackOutlineColor:
            WidgetStateProperty.all<Color>(chosenColor.backgroundColor),
      ),
    );
  }
}
