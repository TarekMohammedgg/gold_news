import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold_news/core/constants/app_colors.dart';
import 'package:gold_news/core/constants/app_images.dart';
import 'package:gold_news/core/constants/app_strings.dart';
import 'package:gold_news/core/constants/app_style.dart';
import 'package:gold_news/core/widgets/item_custom_contianer.dart';
import 'package:gold_news/features/gold/data/repo/gold_repo.dart';
import 'package:gold_news/features/gold/presentation/cubits/gold_cubit.dart';
import 'package:gold_news/features/gold/presentation/cubits/gold_states.dart';

class GoldScreen extends StatelessWidget {
  const GoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GoldCubit(GoldRepo())..getGold(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppStrings.gold, style: AppStyle.style30bold),
          centerTitle: true,
        ),
        body: BlocBuilder<GoldCubit, GoldStates>(
          builder: (context, state) {
            if (state is GoldLoadingState) {
              return Center(
                child: CircularProgressIndicator(
                  backgroundColor: AppColors.goldColor,
                ),
              );
            } else if (state is GoldErrorState) {
              return Center(child: Text(state.errmsg));
            } else if (state is GoldSuccessState) {
              return Center(
                child: ItemCustomContainer(
                  image: AppImages.goldImage,
                  currentSalary: state.goldModel.price as double,
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
