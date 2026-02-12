import 'package:gold_news/features/gold/data/models/gold_model.dart';

abstract class GoldStates {}

class GoldInitialState extends GoldStates {}

class GoldLoadingState extends GoldStates {}

class GoldSuccessState extends GoldStates {
  final GoldModel goldModel;

  GoldSuccessState({required this.goldModel});
}

class GoldErrorState extends GoldStates {
  final String errmsg;

  GoldErrorState({required this.errmsg});
}
