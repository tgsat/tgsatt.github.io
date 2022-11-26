import 'package:flutter/material.dart';
import 'package:portfolio_me/pages/dashboard/dashboard_page.dart';
import 'package:portfolio_me/utils/value/color_config.dart';
import 'package:portfolio_me/utils/value/dictionary.dart';
import 'package:portfolio_me/utils/value/size_config.dart';
import 'package:portfolio_me/utils/widgets/animated/loading_general.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const DashboardPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: ColorConfig.primaryColor,
          width: SizeConfig.maxWidth(context),
          height: SizeConfig.maxHeight(context),
          child: Center(
              child: LoadingGeneral.spinKitWithText(
            title: Dictionary.pleaseWait,
          ))),
    );
  }
}
