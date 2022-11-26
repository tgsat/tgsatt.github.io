import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_me/utils/value/color_config.dart';
import 'package:portfolio_me/utils/value/dictionary.dart';
import 'package:portfolio_me/utils/value/fonts.dart';
import 'package:portfolio_me/utils/value/size_config.dart';
import 'package:portfolio_me/utils/widgets/buttons/button_general.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          children: [
            SizedBox(
              width: SizeConfig.isMobile(context)
                  ? SizeConfig.maxWidth(context)
                  : SizeConfig.maxWidth(context) / 2,
              height: SizeConfig.isMobile(context)
                  ? SizeConfig.maxHeight(context) / 2
                  : SizeConfig.maxHeight(context) - 70,
              child: Padding(
                padding: SizeConfig.isMobile(context)
                    ? const EdgeInsets.all(5.0)
                    : const EdgeInsets.only(
                        top: 50, bottom: 50, right: 10, left: 100),
                child: SvgPicture.asset(
                  "assets/svg/image.svg",
                  alignment: Alignment.center,
                ),
              ),
            ),
            SizedBox(
              width: SizeConfig.isMobile(context)
                  ? SizeConfig.maxWidth(context)
                  : SizeConfig.maxWidth(context) / 2,
              height: SizeConfig.isMobile(context)
                  ? SizeConfig.maxHeight(context) / 2
                  : SizeConfig.maxHeight(context) - 70,
              child: Center(
                child: SizedBox(
                  height: SizeConfig.isMobile(context)
                      ? 355 / (SizeConfig.maxWidth(context) * 0.0025)
                      : 330,
                  width: SizeConfig.isMobile(context)
                      ? SizeConfig.maxWidth(context) * 0.85
                      : 380,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          Dictionary.welcomeToPortofolio,
                          style: const Fonts(
                            size: 11,
                            color: ColorConfig.articleText,
                            fontWeight: FontWeight.bold,
                          ).titleOpenSans,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(Dictionary.hiIam,
                              style: const Fonts(
                                height: 1,
                                size: 24,
                                fontWeight: FontWeight.w700,
                              ).titleOpenSans)),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          Dictionary.aboutDescription,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 14),
                          child: ButtonGeneral.rowFixed(
                            titleFirst: Dictionary.resume,
                            pressFirst: () {},
                            titleSecond: Dictionary.hireMe,
                            pressSecond: () {},
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
