import 'package:flutter/material.dart';
import 'package:gold_news/core/routing/app_router.dart';
import 'package:gold_news/core/routing/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.homeScreen,
      onGenerateRoute: AppRouter().generatRoute,
    );
  }
}
