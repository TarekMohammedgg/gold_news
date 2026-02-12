import 'package:flutter/material.dart';
import 'package:gold_news/core/constants/app_colors.dart';
import 'package:gold_news/core/constants/app_images.dart';
import 'package:gold_news/core/constants/app_strings.dart';
import 'package:gold_news/core/routing/routes.dart';
import 'package:gold_news/core/widgets/choice_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double heigh = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            choiceButton(
              title: AppStrings.gold,
              color: AppColors.goldColor,
              image: AppImages.goldImage,
              heigh: heigh,
              width: width,
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.goldScreen);
              },
            ),
            SizedBox(height: 20),
            choiceButton(
              title: AppStrings.silver,
              color: AppColors.sliverColor,
              image: AppImages.silverImage,
              heigh: heigh,
              width: width,
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.silverScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
