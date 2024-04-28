import 'package:bloc/bloc.dart';

import 'onboareing_sates.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingInitial());

  int currentPage = 0;

  void nextPage() {
    if (currentPage < 3) {
      currentPage++;
      print(currentPage);
      emit(NextPageState());
    }
  }

  void previousPage() {
    currentPage--;
    emit(PreviousPageState());
  }
}
