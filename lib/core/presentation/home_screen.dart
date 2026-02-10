import 'package:flutter/material.dart';
import 'package:gold_news/core/constants/app_colors.dart';
import 'package:gold_news/core/constants/app_strings.dart';
import 'package:gold_news/core/widgets/choice_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double heigh = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: AppColors.homeScreenScaffoldBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            choiceButton(
              title: AppStrings.gold,
              color: AppColors.goldColor,
              heigh: heigh,
              width: width,
              onPressed: () {},
            ),
            SizedBox(height: 20),
            choiceButton(
              title: AppStrings.silver,
              color: AppColors.sliverColor,
              heigh: heigh,
              width: width,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
