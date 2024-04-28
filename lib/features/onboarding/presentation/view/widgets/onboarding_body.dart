import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_shop/features/onboarding/presentation/view/get_started_view.dart';
import 'package:furniture_shop/features/onboarding/presentation/view/widgets/buttoms.dart';
import 'package:furniture_shop/features/onboarding/presentation/view/widgets/image_section.dart';
import 'package:furniture_shop/features/onboarding/presentation/view/widgets/skip_button.dart';
import 'package:furniture_shop/features/onboarding/presentation/view/widgets/text_tittle.dart';

import '../../../../../constant.dart';
import '../../manager/onboarding_cubit/onboareing_cubit.dart';
import '../../manager/onboarding_cubit/onboareing_sates.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
        builder: (context, state) {
      int currentPage = BlocProvider.of<OnboardingCubit>(context).currentPage;
      if (currentPage == 3) {
        return const GetStartedView();
      } else {
        return Stack(
          children: [
            ImageSection(currentPage: currentPage),
            SkipButton(currentPage: currentPage),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    TextTittle(currentPage: currentPage),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.1),
                      child: const Text(
                        'Lorem ipsum dolor sit amet, consectetur'
                        ' adipiscing elit, sed do '
                        'eiusmod tempor incididunt',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: kSecondaryColor),
                      ),
                    ),
                    const Spacer(),
                    Buttoms(
                      currentPage: currentPage,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      }
    });
  }
}
