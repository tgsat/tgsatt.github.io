import 'package:flutter/material.dart';
import 'package:portfolio_me/utils/value/size_config.dart';

import 'color_config.dart';

class ThemeConfig {
  static ThemeData primaryTheme = ThemeData(
    // Define the default brightness and colors.
    brightness: Brightness.light,
    primaryColor: ColorConfig.primaryColor,
    accentColor: ColorConfig.accentColor,
    indicatorColor: ColorConfig.primaryColor,
    bottomAppBarColor: ColorConfig.bottomAppBarColor,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: ColorConfig.greyText),
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(color: Colors.black),
      textTheme: TextTheme(
        headline6: TextStyle(
          color: ColorConfig.black,
          fontSize: SizeConfig.textBig,
          fontWeight: FontWeight.w800,
        ),
      ),
      elevation: 2,
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    ),
  );

  static AppBarTheme appBarTheme = const AppBarTheme(
    iconTheme: IconThemeData(color: ColorConfig.greyText),
    backgroundColor: ColorConfig.primaryColor,
    titleTextStyle: TextStyle(color: Colors.black),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: ColorConfig.black,
        fontSize: SizeConfig.textBig,
        fontWeight: FontWeight.w800,
      ),
    ),
    elevation: 2,
  );
}
