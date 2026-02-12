import 'package:flutter/material.dart';
import 'package:gold_news/core/presentation/home_screen.dart';
import 'package:gold_news/core/routing/routes.dart';
import 'package:gold_news/features/gold/presentation/screens/gold_screen.dart';
import 'package:gold_news/features/silver/presentation/screens/silver_screen.dart';

class AppRouter {
  Route generatRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homeScreen:
        return MaterialPageRoute(
          builder: (context) {
            return HomeScreen();
          },
        );
      case AppRoutes.goldScreen:
        return MaterialPageRoute(
          builder: (context) {
            return GoldScreen();
          },
        );
      case AppRoutes.silverScreen:
        return MaterialPageRoute(
          builder: (context) {
            return SilverScreen();
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
