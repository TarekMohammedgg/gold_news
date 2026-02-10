import 'package:flutter/material.dart';
import 'package:gold_news/core/constants/app_colors.dart';
import 'package:gold_news/core/constants/app_images.dart';
import 'package:gold_news/core/constants/app_style.dart';

class choiceButton extends StatelessWidget {
  const choiceButton({
    super.key,
    required this.heigh,
    required this.width,
    required this.onPressed,
    required this.title,
    required this.color,
    required this.image,
  });

  final double heigh;
  final double width;
  final void Function()? onPressed;
  final String title;
  final Color color;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: heigh / 4.5,
        width: width / 1.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.cardBackgroundColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, height: 50, width: 50),
            SizedBox(height: 10),
            Text(
              title,
              style: AppStyle.textOnChoiceCard.copyWith(color: color),
            ),
          ],
        ),
      ),
    );
  }
}
