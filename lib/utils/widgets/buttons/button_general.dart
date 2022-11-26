import 'package:flutter/material.dart';
import 'package:portfolio_me/utils/value/color_config.dart';

class ButtonGeneral {
  static TextButton primary(
          {Function()? press,
          Color? color,
          Color? backgroundColor,
          String? title,
          Color? sideColor}) =>
      TextButton(
        onPressed: press,
        style: TextButton.styleFrom(
            primary: color ?? Colors.white,
            backgroundColor: backgroundColor ?? ColorConfig.primaryColor,
            padding: const EdgeInsets.all(16.0),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            side: BorderSide(color: sideColor ?? ColorConfig.primaryColor)),
        child: Text(
          title ?? "",
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      );

  static TextButton info(
          {Function()? press,
          Color? color,
          Color? backgroundColor,
          String? title}) =>
      TextButton(
        onPressed: press,
        style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: ColorConfig.blueLink,
            padding: const EdgeInsets.all(18.0),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            )),
        child: Text(
          title ?? "",
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      );

  static Row rowFixed({
    Function()? pressFirst,
    String? titleFirst,
    Function()? pressSecond,
    String? titleSecond,
  }) =>
      Row(
        children: [
          TextButton(
            onPressed: pressFirst,
            style: TextButton.styleFrom(
                backgroundColor: ColorConfig.grey.withOpacity(0.8),
                padding: const EdgeInsets.all(16.0),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                side: const BorderSide(color: ColorConfig.grey)),
            child: Text(
              titleFirst ?? "",
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: ColorConfig.articleText,
              ),
            ),
          ),
          const SizedBox(width: 10),
          TextButton(
            onPressed: pressSecond,
            style: TextButton.styleFrom(
                backgroundColor: ColorConfig.primaryColor,
                padding: const EdgeInsets.all(16.0),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                side: const BorderSide(color: ColorConfig.primaryColor)),
            child: Text(
              titleSecond ?? "",
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: ColorConfig.white,
              ),
            ),
          ),
        ],
      );
}
