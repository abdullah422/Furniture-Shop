import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import '../onboarding_view.dart';
import 'curve_container.dart';
class ImageSection extends StatelessWidget {
   ImageSection({super.key, required this.currentPage});
  final int currentPage;
  final List<String> imagesPaths = [
    'assets/images/1-portrait.png',
    'assets/images/2-portrait.png',
    'assets/images/3-portrait.png'
  ];
  @override
  Widget build(BuildContext context) {
    return  ClipPath(
      clipper: NativeClipper(context: context),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.65,
        width: double.infinity,
        color: kGrayColor,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.12,
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 1/2,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Image.asset(imagesPaths[currentPage]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
