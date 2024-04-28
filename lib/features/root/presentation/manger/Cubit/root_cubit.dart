import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_shop/features/cart/presentaion/view/cart_view.dart';
import 'package:furniture_shop/features/root/presentation/manger/Cubit/root_states.dart';
import 'package:furniture_shop/teeest/cart.dart';
import 'package:furniture_shop/teeest/home.dart';
import 'package:furniture_shop/teeest/profile.dart';

import '../../../../home/presentation/view/home_view.dart';

class RootCubit extends Cubit<RootStates> {
  RootCubit():super(InitialRootState());


   final List<Widget> screens=  [
     HomeView(),
     CartView(),
     Profile(),
     Cart(),
     Profile()
   ];

  int currentPage =0;
  void navigateTo(int index) {

    currentPage = index;
    emit(ChangeButtonNavigationState());
  }

}