import 'package:flutter/material.dart';
import 'package:portfolio_me/constants.dart';
import 'package:portfolio_me/pages/dashboard/project/project_card.dart';
import 'package:portfolio_me/utils/value/dictionary.dart';
import 'package:portfolio_me/utils/value/size_config.dart';

class RecentProjects extends StatelessWidget {
  const RecentProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
          child: Text(
            Dictionary.lastestProject,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.isMobile(context) ? 40 : 80),
          child: const Text(
            Dictionary.projectDescription,
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 10),
        Wrap(
          children: [
            ProjectCard(data: Constants.projects[0]),
            ProjectCard(data: Constants.projects[1]),
            ProjectCard(data: Constants.projects[2]),
            ProjectCard(data: Constants.projects[3]),
            ProjectCard(data: Constants.projects[4]),
            ProjectCard(data: Constants.projects[5]),
            ProjectCard(data: Constants.projects[6]),
            ProjectCard(data: Constants.projects[7]),
            ProjectCard(data: Constants.projects[8]),
          ],
        ),
      ],
    );
  }
}
