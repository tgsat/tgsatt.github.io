import 'package:flutter/material.dart';
import 'package:portfolio_me/pages/dashboard/dashboard_page.dart';
// import 'package:portfolio_me/pages/splash/splash_page.dart';
import 'package:portfolio_me/utils/value/dictionary.dart';
import 'package:portfolio_me/utils/value/theme_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Dictionary.tgsatt,
      theme: ThemeConfig.primaryTheme,
      home: const DashboardPage(),
      onGenerateRoute: (routeSettings) {
        // switch (routeSettings.name) {
        //   case '/LOGIN':
        //     return MaterialPageRoute(
        //       builder: (context) => const DashboardPage(),
        //     );
        // }
      },
    );
  }
}

