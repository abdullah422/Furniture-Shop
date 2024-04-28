import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shop/constant.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import 'center_widget.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>  with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    initSlidingAnimation();
    navigateToHome();
  }
  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds:4), () {
      GoRouter.of(context).push(AppRouter.kOnboardingView);
    });
  }
  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(2, 2), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -30,
          right: -30,
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: kSecondaryColor, width: 0.8)),
          ),
        ),
        Positioned(
          bottom: -130,
          left: -130,
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                //borderRadius: BorderRadius.circular(100),
                border: Border.all(color: kSecondaryColor, width: 0.8)),
          ),
        ),
        CenterWidget(slidingAnimation: slidingAnimation,)
      ],
    );
  }
}
