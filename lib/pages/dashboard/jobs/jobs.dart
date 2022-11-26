import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:portfolio_me/constants.dart';
import 'package:portfolio_me/pages/dashboard/jobs/job_card.dart';
import 'package:portfolio_me/utils/value/color_config.dart';
import 'package:portfolio_me/utils/value/dictionary.dart';
import 'package:portfolio_me/utils/value/size_config.dart';
import 'package:portfolio_me/utils/value/url.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class JobHistory extends StatelessWidget {
  const JobHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
          child: Text(
            Dictionary.jobHistory,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.isMobile(context) ? 40 : 80),
          child: TouchableOpacity(
            onTap: () {
              js.context.callMethod('open', [Url.github]);
            },
            child: RichText(
                softWrap: true,
                textAlign: TextAlign.center,
                text: const TextSpan(
                    text: Dictionary.jobDescription,
                    style: TextStyle(fontSize: 16),
                    children: <InlineSpan>[
                      TextSpan(
                        text: Dictionary.github,
                        style: TextStyle(
                            fontSize: 16, color: ColorConfig.primaryColor),
                      )
                    ])),
          ),
        ),
        const SizedBox(height: 10),
        Wrap(
          children: [
            JobCard(data: Constants.jobs[0]),
            JobCard(data: Constants.jobs[1]),
          ],
        ),
      ],
    );
  }
}
