import 'package:flutter/material.dart';
import 'package:gold_news/core/presentation/home_screen.dart';
import 'package:gold_news/core/routing/routes.dart';

class AppRouter {
  Route generatRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homeScreen:
        return MaterialPageRoute(
          builder: (context) {
            return HomeScreen();
          },
        );

      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Text("No route defiend for ${settings.name}"),
              ),
            );
          },
        );
    }
  }
}
