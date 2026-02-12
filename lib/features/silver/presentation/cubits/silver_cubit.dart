import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold_news/features/silver/data/repo/silver_repo.dart';
import 'package:gold_news/features/silver/presentation/cubits/silver_state.dart';

class SilverCubit extends Cubit<SilverStates> {
  final SilverRepo silverRepo;
  SilverCubit(this.silverRepo) : super(SilverInitialState());
  Future<void> getSilver() async {
    emit(SilverLoadingState());
    final res = await silverRepo.getSilver();
    res.fold(
      (error) {
        emit(SilverErrorState(errmsg: error));
      },
      (silverModel) {
        emit(SilverSuccessState(silverModel: silverModel));
      },
    );
  }
}
