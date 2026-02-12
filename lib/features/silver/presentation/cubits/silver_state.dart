import 'package:gold_news/features/silver/data/models/silver_model.dart';

abstract class SilverStates {}

class SilverInitialState extends SilverStates {}

class SilverLoadingState extends SilverStates {}

class SilverSuccessState extends SilverStates {
  final SilverModel silverModel;

  SilverSuccessState({required this.silverModel});
}

class SilverErrorState extends SilverStates {
  final String errmsg;

  SilverErrorState({required this.errmsg});
}
