import 'package:flutter/material.dart';
import 'package:portfolio_me/utils/value/color_config.dart';
import 'package:portfolio_me/utils/value/dictionary.dart';
import 'package:portfolio_me/utils/value/fonts.dart';
import 'package:portfolio_me/utils/value/size_config.dart';

class ContactWidget {
  static Padding content(BuildContext context, {String? title}) => Padding(
        padding: SizeConfig.isMobile(context)
            ? const EdgeInsets.symmetric(horizontal: 30)
            : const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Text(
            title ?? "",
            style: const Fonts(
                    size: 18,
                    color: ColorConfig.white,
                    fontWeight: FontWeight.w400)
                .titleNunito,
          ),
        ),
      );
}

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.maxWidth(context),
      color: ColorConfig.primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 16,
          ),
          Text(
            Dictionary.contactMe,
            style: const Fonts(
                    size: 20,
                    color: ColorConfig.white,
                    fontWeight: FontWeight.bold)
                .titleNunito,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "If you have any question, Please feel free to ask.",
            style: const Fonts(
                    color: ColorConfig.white, fontWeight: FontWeight.w400)
                .titleNunito,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: 30,
                horizontal: SizeConfig.isMobile(context)
                    ? SizeConfig.maxWidth(context) / 6
                    : SizeConfig.maxWidth(context) / 2),
            child: Wrap(
              children: [
                ContactWidget.content(
                  context,
                  title: "+62 811 3936 365",
                ),
                ContactWidget.content(
                  context,
                  title: "tgsatt.wicaksono@gmail.com",
                ),
                ContactWidget.content(
                  context,
                  title: "@tgsatt_",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
