import 'package:flutter/material.dart';
import 'package:uber_clone/config/router/router_path_const.dart';
import 'package:uber_clone/src/features/home/home_view.dart';
import 'package:uber_clone/src/features/rider_option/intercity_screen.dart';
import 'package:uber_clone/src/features/settings/account_settings.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case initialRoute:
      //   return MaterialPageRoute<Widget>(builder: (_) => IntroScreen());
      case homePageRoute:
        return MaterialPageRoute<Widget>(builder: (_) => const HomePage());
      case accountSettingPageRoute:
        return MaterialPageRoute<Widget>(builder: (_) => AccountSettings());
      case intercityPageRoute:
        return MaterialPageRoute<Widget>(
            builder: (_) => const RiderOptionScreen(
                  title: 'Uber Intercity',
                  descriptionItems: [],
                ));
      // case authRoute:
      //   return MaterialPageRoute<Widget>(builder: (_) => const AuthPage());
      // case signInPageRoute:
      //   return MaterialPageRoute<Widget>(builder: (_) => LogInScreen());
      // case dashBoardPageRoute:
      //   return MaterialPageRoute<Widget>(builder: (_) => const DashboardPage());
      // case teamSelectionPageRoute:
      //   return MaterialPageRoute<Widget>(
      //       builder: (_) => const TeamSelectionScreen());
      // case aboutAppPageRoute:
      //   return MaterialPageRoute<Widget>(builder: (_) => AboutApp());
      // case fullScreenImageViewerPageRoute:
      //   final String? imgUrl = settings.arguments as String?;
      //   return MaterialPageRoute<Widget>(
      //       builder: (_) => FullScreenImageViewer(imgUrl: imgUrl));

      default:
        return MaterialPageRoute<Widget>(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }

  ///Singleton i_factory
  static final MyRouter _instance = MyRouter._internal();

  factory MyRouter() {
    return _instance;
  }

  MyRouter._internal();
}
