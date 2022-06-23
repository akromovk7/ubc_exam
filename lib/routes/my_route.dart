import 'package:flutter/material.dart';
import 'package:ubc_app/screens/home/view/pages/auth/view/auth_view.dart';
import 'package:ubc_app/screens/home/view/pages/central/view/central_view.dart';
import 'package:ubc_app/screens/home/view/pages/splash/splash_screen.dart';

class MyRoute {
  static final MyRoute _instance = MyRoute.init();
  static MyRoute get instance => _instance;
  MyRoute.init();

  Route? myRoutes(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case "/splash":
        return easynavigate(SplashScreenView());
        case "/auth":
        return easynavigate(AuthView());
        case "/home":
        return easynavigate(CentralView());
    }
  }

  easynavigate(Widget page) => MaterialPageRoute(builder: (context) => page);
}
