import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constant.dart';


class CenterWidget extends StatelessWidget {
  const CenterWidget({
    Key? key,
    required this.slidingAnimation,
  }) : super(key: key);

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: kPrimaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                            left: -9,
                            child: SizedBox(
                              height: 45,
                              width: 45,
                              child: SvgPicture.asset(
                                  'assets/svg/sofa-for-splash-screen.svg'),
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Furniture.',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                  )
                ],
              ),
            )
          );
        });
  }
}