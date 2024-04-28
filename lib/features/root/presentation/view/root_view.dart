import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_shop/constant.dart';
import 'package:furniture_shop/features/root/presentation/manger/Cubit/root_cubit.dart';
import 'package:furniture_shop/features/root/presentation/manger/Cubit/root_states.dart';
import 'package:furniture_shop/teeest/cart.dart';
import 'package:furniture_shop/teeest/home.dart';
import 'package:furniture_shop/teeest/profile.dart';

import 'widgets/button_navaigation_button.dart';

class RootView extends StatelessWidget {
  RootView({super.key});

  final List<Widget> screens = [Home(), Cart(), Profile()];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RootCubit, RootStates>(
        builder: (_, state) {
          return Scaffold(
            backgroundColor: kScaffoldColor,
            body: Stack(
              children: [
                BlocProvider.of<RootCubit>(context)
                    .screens[BlocProvider.of<RootCubit>(context).currentPage],
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SafeArea(
                    child: Container(
                      height: 70,
                      margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.05),
                      decoration: const BoxDecoration(
                          color: kBlackColor,
                          borderRadius: BorderRadius.all(Radius.circular(35))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 6,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ButtonNavigationButton(
                                  selected: BlocProvider.of<RootCubit>(context)
                                              .currentPage ==
                                          0
                                      ? true
                                      : false,
                                  icon: Icons.home_outlined,
                                  action: () {
                                    BlocProvider.of<RootCubit>(context)
                                        .navigateTo(0);
                                  },
                                ),
                                ButtonNavigationButton(
                                  selected: BlocProvider.of<RootCubit>(context)
                                              .currentPage ==
                                          1
                                      ? true
                                      : false,
                                  icon: Icons.shopping_cart_outlined,
                                  action: () {
                                    BlocProvider.of<RootCubit>(context)
                                        .navigateTo(1);
                                  },
                                ),
                                ButtonNavigationButton(
                                  selected: BlocProvider.of<RootCubit>(context)
                                              .currentPage ==
                                          2
                                      ? true
                                      : false,
                                  icon: Icons.shopping_cart_outlined,
                                  action: () {
                                    BlocProvider.of<RootCubit>(context)
                                        .navigateTo(2);
                                  },
                                ),
                                ButtonNavigationButton(
                                  selected: BlocProvider.of<RootCubit>(context)
                                              .currentPage ==
                                          3
                                      ? true
                                      : false,
                                  icon: Icons.message_rounded,
                                  action: () {
                                    BlocProvider.of<RootCubit>(context)
                                        .navigateTo(3);
                                  },
                                ),
                                ButtonNavigationButton(
                                  selected: BlocProvider.of<RootCubit>(context)
                                              .currentPage ==
                                          4
                                      ? true
                                      : false,
                                  icon: Icons.person_remove_alt_1_rounded,
                                  action: () {
                                    BlocProvider.of<RootCubit>(context)
                                        .navigateTo(4);
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 6,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
        listener: (_, state) {});
  }
}
