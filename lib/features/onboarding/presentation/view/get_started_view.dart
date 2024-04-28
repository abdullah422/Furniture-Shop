import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shop/constant.dart';
import 'package:furniture_shop/core/utils/app_router.dart';
import 'package:furniture_shop/core/widgets/main_button.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/text_tittle.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.12,
              ),
              const CenterImage(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              TextTittle(
                currentPage: 3,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.1),
                child: MainButton(
                  textButton: 'Let' '\'s Get Started',
                  action: (){
                    log('ddd');
                    GoRouter.of(context).push(AppRouter.kRegisterView);
                  }),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        GoRouter.of(context).push(AppRouter.kLoginView);
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryColor,
                        ),
                      ),),
                ],
              )
            ],
          )),
    );
  }
}

class CenterImage extends StatelessWidget {
  const CenterImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.18),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.64,
        height: MediaQuery.of(context).size.height * 0.40,
        decoration: BoxDecoration(
          //shape: BoxShape.circle,
          borderRadius: BorderRadius.all(Radius.elliptical(150, 200)),
          border: Border.all(width: 1, color: kPrimaryColor),
        ),
        child: Stack(
          children: [
            Positioned(
                left: -MediaQuery.of(context).size.width * 0.05,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.elliptical(150, 200),
                    ),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            AssetImage('assets/images/onboarding_image.jpg')),
                  ),
                  width: MediaQuery.of(context).size.width * 0.64,
                  height: MediaQuery.of(context).size.height * 0.40,
                ))
          ],
        ),
      ),
    );
  }
}
