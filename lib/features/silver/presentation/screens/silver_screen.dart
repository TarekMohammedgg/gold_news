import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold_news/core/constants/app_colors.dart';
import 'package:gold_news/core/constants/app_images.dart';
import 'package:gold_news/core/constants/app_strings.dart';
import 'package:gold_news/core/constants/app_style.dart';
import 'package:gold_news/core/widgets/item_custom_contianer.dart';
import 'package:gold_news/features/silver/data/repo/silver_repo.dart';
import 'package:gold_news/features/silver/presentation/cubits/silver_cubit.dart';
import 'package:gold_news/features/silver/presentation/cubits/silver_state.dart';

class SilverScreen extends StatelessWidget {
  const SilverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SilverCubit(SilverRepo())..getSilver(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true ,
          title: Text(
            AppStrings.silver,
            style: AppStyle.style30bold.copyWith(color: AppColors.sliverColor),
          ),
        ),
        body: BlocBuilder<SilverCubit, SilverStates>(
          builder: (context, state) {
            if (state is SilverLoadingState) {
              return Center(
                child: CircularProgressIndicator(color: AppColors.sliverColor),
              );
            } else if (state is SilverErrorState) {
              return Center(child: Text(state.errmsg));
            } else if (state is SilverSuccessState) {
              return Center(
                child: ItemCustomContainer(
                  color: AppColors.sliverColor,
                  image: AppImages.silverImage,
                  currentSalary: state.silverModel.price as double,
                ),
              );
            } else {
              return SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}
