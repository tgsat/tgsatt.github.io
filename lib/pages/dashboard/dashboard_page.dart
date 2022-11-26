import 'package:flutter/material.dart';
import 'package:portfolio_me/pages/dashboard/jobs/jobs.dart';
import 'package:portfolio_me/pages/dashboard/project/project.dart';
import 'package:portfolio_me/pages/dashboard/skill/skill.dart';
import 'package:portfolio_me/pages/dashboard/widgets/action_homepage.dart';
import 'package:portfolio_me/pages/dashboard/widgets/drawer.dart';
import 'package:portfolio_me/pages/dashboard/widgets/footer.dart';
import 'package:portfolio_me/pages/dashboard/about/about.dart';
import 'package:portfolio_me/pages/dashboard/widgets/social_icon.dart';
import 'package:portfolio_me/utils/value/color_config.dart';
import 'package:portfolio_me/utils/value/image_config.dart';
import 'package:portfolio_me/utils/value/size_config.dart';
import 'package:portfolio_me/utils/widgets/app_bar/app_bar_general.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final ScrollController myScrollController = ScrollController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      key: _scaffoldKey,
      backgroundColor: ColorConfig.main,
      appBar: AppBarGeneral.appBarFixed(
        context,
        appShadow: true,
        img: ImageConfig.icon,
        widget: Row(children: [
          SizeConfig.isMobile(context)
              ? Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: InkWell(
                    child: const Tooltip(
                      message: "Menu",
                      child: Icon(Icons.menu,
                          color: ColorConfig.primaryColor, size: 30),
                    ),
                    onTap: () {
                      _scaffoldKey.currentState!.openEndDrawer();
                    },
                  ),
                )
              : ActionHomePage(sc: myScrollController),
        ]),
      ),
      endDrawer: SizeConfig.isMobile(context)
          ? ActionDrawer(sc: myScrollController)
          : null,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: myScrollController,
              child: Column(
                children: const [
                  About(),
                  Skill(),
                  SizedBox(height: 50),
                  JobHistory(),
                  SizedBox(height: 50),
                  RecentProjects(),
                  SizedBox(height: 50),
                  Footer(),
                  SizedBox(height: 20),
                ],
              ),
            ),
            const Social(),
          ],
        ),
      ),
    );
  }
}
