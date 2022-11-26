import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:portfolio_me/constants.dart';
import 'package:portfolio_me/pages/dashboard/project/project_card.dart';
import 'package:portfolio_me/utils/value/dictionary.dart';
import 'package:portfolio_me/utils/value/size_config.dart';
import 'package:portfolio_me/utils/value/url.dart';

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
            ProjectCard(
              data: Constants.projects[0],
              press: () {
                js.context.callMethod('open', [Url.signal]);
              },
            ),
            ProjectCard(
              data: Constants.projects[1],
              press: () {
                js.context.callMethod('open', [Url.wish]);
              },
            ),
            ProjectCard(
              data: Constants.projects[2],
              press: () {
                js.context.callMethod('open', [Url.qhse]);
              },
            ),
            ProjectCard(
              data: Constants.projects[3],
              press: () {
                js.context.callMethod('open', [Url.baf]);
              },
            ),
            ProjectCard(
              data: Constants.projects[4],
              press: () {
                js.context.callMethod('open', [Url.grha]);
              },
            ),
            ProjectCard(
              data: Constants.projects[5],
              press: () {
                js.context.callMethod('open', [Url.absensi]);
              },
            ),
            ProjectCard(
              data: Constants.projects[6],
              press: () {
                js.context.callMethod('open', [Url.linkedin]);
              },
            ),
            ProjectCard(
              data: Constants.projects[7],
              press: () {
                js.context.callMethod('open', [Url.mayBank]);
              },
            ),
            ProjectCard(
              data: Constants.projects[8],
              press: () {
                js.context.callMethod('open', [Url.hsePln]);
              },
            ),
          ],
        ),
      ],
    );
  }
}
