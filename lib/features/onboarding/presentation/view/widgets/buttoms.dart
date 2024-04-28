import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_shop/constant.dart';

import '../../manager/onboarding_cubit/onboareing_cubit.dart';


class Buttoms extends StatelessWidget {
  const Buttoms({super.key, required this.currentPage});

  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Visibility(
            visible: currentPage != 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: kScaffoldColor,
                    shape: BoxShape.circle,
                    border: Border.all(color: kPrimaryColor),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.06),
                    child: IconButton(
                      onPressed: () {
                        BlocProvider.of<OnboardingCubit>(context)
                            .previousPage();
                      },
                      color: kScaffoldColor,
                      icon: const Icon(
                        Icons.arrow_back,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Container(
                  height: currentPage == 0 ? 12 : 10,
                  width: currentPage == 0 ? 12 : 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentPage == 0 ? kPrimaryColor : Colors.black12,
                  ),
                ),
                Container(
                  height: currentPage == 1 ? 12 : 10,
                  width: currentPage == 1 ? 12 : 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentPage == 1 ? kPrimaryColor : Colors.black12,
                  ),
                ),
                Container(
                  height: currentPage == 2 ? 12 : 10,
                  width: currentPage == 2 ? 12 : 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentPage == 2 ? kPrimaryColor : Colors.black12,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                //height: MediaQuery.of(context).size.height * 0.05,
                // width: MediaQuery.of(context).size.width * 0.2,
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.06),
                  child: IconButton(
                    onPressed: () {
                      BlocProvider.of<OnboardingCubit>(context).nextPage();
                      log(MediaQuery.of(context).size.height.toString());
                    },
                    color: kPrimaryColor,
                    icon: const Icon(
                      Icons.arrow_forward_rounded,
                      color: kScaffoldColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
