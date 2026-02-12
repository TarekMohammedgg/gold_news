import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold_news/features/gold/data/repo/gold_repo.dart';
import 'package:gold_news/features/gold/presentation/cubits/gold_states.dart';

class GoldCubit extends Cubit<GoldStates> {
  final GoldRepo goldRepo;
  GoldCubit(this.goldRepo) : super(GoldInitialState());
  Future<void> getGold() async {
    emit(GoldLoadingState());
    final res = await goldRepo.getGold();
    res.fold(
      (error) {
        emit(GoldErrorState(errmsg: error));
      },
      (goldModel) {
        emit(GoldSuccessState(goldModel: goldModel));
      },
    );
  }
}
