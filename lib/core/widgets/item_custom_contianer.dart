import 'package:flutter/material.dart';
import 'package:gold_news/core/constants/app_sizes.dart';
import 'package:gold_news/core/constants/app_style.dart';

class ItemCustomContainer extends StatelessWidget {
  const ItemCustomContainer({
    super.key,
    required this.image,
    this.color,
    required this.currentSalary,
  });
  final String image;
  final Color? color;
  final double currentSalary;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image,
          width: AppSizes.imagewidth,
          height: AppSizes.imageheight,
        ),
        SizedBox(height: AppSizes.sizeBetweenItems),
        Text(
          "${currentSalary.toStringAsFixed(2)} EGP",
          style: color != null
              ? AppStyle.style30bold.copyWith(color: color)
              : AppStyle.style30bold,
        ),
      ],
    );
  }
}
