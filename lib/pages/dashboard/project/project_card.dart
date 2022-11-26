import 'package:flutter/material.dart';
import 'package:portfolio_me/models/project_model.dart';
import 'package:portfolio_me/utils/value/card.dart';
import 'package:portfolio_me/utils/value/color_config.dart';
import 'package:portfolio_me/utils/value/fonts.dart';
import 'package:portfolio_me/utils/value/size_config.dart';

class ProjectCard extends StatelessWidget {
  final ProjectModel data;
  const ProjectCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.isMobile(context) ? 50 : 13,
        vertical: 13,
      ),
      child: DecoratedBox(
        decoration: CustomCard.shadow(),
        child: SizedBox(
          width: !SizeConfig.isMobile(context)
              ? SizeConfig.maxWidth(context) / 4
              : SizeConfig.maxWidth(context) * 0.9,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    data.title ?? "",
                    style: const Fonts(
                            size: 22, height: 1, fontWeight: FontWeight.bold)
                        .titleNunito,
                  ),
                ),
                const SizedBox(height: 4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    data.section ?? "",
                    style: const Fonts(
                      size: 14,
                      height: 1,
                      fontWeight: FontWeight.w300,
                      color: ColorConfig.primaryColor,
                    ).titleNunito,
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    data.description ?? "",
                    textAlign: TextAlign.start,
                    style: const Fonts(
                      size: 16,
                      height: 1,
                      fontWeight: FontWeight.w300,
                      color: ColorConfig.black,
                    ).titleNunito,
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(child: Container()),
                      Text(
                        data.date ?? "",
                        textAlign: TextAlign.end,
                        style: const Fonts(
                                size: 12,
                                height: 1,
                                color: ColorConfig.articleText,
                                fontWeight: FontWeight.w200)
                            .titleNunito,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
