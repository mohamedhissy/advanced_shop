import 'package:advanced_ecommerce/features/out_boarding/view/out_boarding_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../config/dependancy_injection.dart';
import '../core/resources/manager_strings.dart';
import '../features/splash/presentaion/view/splash_screen.dart';

class Routes {
  static const String splashScreen = '/splash_screen';
  static const String outBoardingScreen = '/out_boarding_screen';

}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        initSplash();
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.outBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OutBoardingScreen());
      default:
        return unDefineRoute();
    }
  }

  static Route<dynamic> unDefineRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(ManagerStrings.notFoundRoute),
        ),
      ),
    );
  }
}
