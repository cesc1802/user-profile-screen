import 'package:flutter/material.dart';
import 'package:user_profile/modules/user_profile/pages/user_profile_page.dart';
import 'package:user_profile/routes/routes_name.dart';

class Routes {
  static Route buildRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.welcomePage:
      case RouteName.userProfilePage:
        return buildRoute(settings, UserProfilePage());
      default:
        //If there is no such named route in the switch statement
        return _errorRoute();
    }
  }

  static Route unAuthorizedRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
      default:
        //If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route authorizedRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
      default:
        //If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route homeRoute(RouteSettings settings) {
    return buildRoutes(settings);
  }

  static Route profileRoute(RouteSettings settings) {
    return buildRoutes(settings);
  }

  static Route _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Coming soon'),
        ),
        body: const Center(
          child: Text('Page not found'),
        ),
      );
    });
  }

  static MaterialPageRoute buildRoute(RouteSettings settings, Widget builder) {
    return MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) => builder,
    );
  }

  static MaterialPageRoute buildRouteDialog(
      RouteSettings settings, Widget builder) {
    return MaterialPageRoute(
      settings: settings,
      fullscreenDialog: true,
      builder: (BuildContext context) => builder,
    );
  }
}
